
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {unsigned long ptr_n; unsigned long min_n; unsigned long max_n; unsigned long step; scalar_t__ padlength; } ;
struct TYPE_7__ {int step; char ptr_c; char min_c; char max_c; } ;
struct TYPE_9__ {TYPE_2__ NumRange; TYPE_1__ CharRange; } ;
struct TYPE_10__ {int globindex; TYPE_3__ content; int type; } ;
typedef TYPE_4__ URLPattern ;
struct TYPE_11__ {size_t size; TYPE_4__* pattern; } ;
typedef TYPE_5__ URLGlob ;
typedef int CURLcode ;


 int CURLE_OK ;
 int CURLE_URL_MALFORMAT ;
 int GLOBERROR (char*,size_t,int ) ;
 scalar_t__ INT_MAX ;
 scalar_t__ ISALPHA (char) ;
 scalar_t__ ISBLANK (char) ;
 scalar_t__ ISDIGIT (char) ;
 int UPTCharRange ;
 int UPTNumRange ;
 scalar_t__ errno ;
 scalar_t__ multiply (unsigned long*,int) ;
 int sscanf (char*,char*,char*,char*,char*) ;
 unsigned long strtoul (char*,char**,int) ;

__attribute__((used)) static CURLcode glob_range(URLGlob *glob, char **patternp,
                           size_t *posp, unsigned long *amount,
                           int globindex)
{






  URLPattern *pat;
  int rc;
  char *pattern = *patternp;
  char *c;

  pat = &glob->pattern[glob->size];
  pat->globindex = globindex;

  if(ISALPHA(*pattern)) {

    char min_c;
    char max_c;
    char end_c;
    unsigned long step = 1;

    pat->type = UPTCharRange;

    rc = sscanf(pattern, "%c-%c%c", &min_c, &max_c, &end_c);

    if(rc == 3) {
      if(end_c == ':') {
        char *endp;
        errno = 0;
        step = strtoul(&pattern[4], &endp, 10);
        if(errno || &pattern[4] == endp || *endp != ']')
          step = 0;
        else
          pattern = endp + 1;
      }
      else if(end_c != ']')

        rc = 0;
      else

        pattern += 4;
    }

    *posp += (pattern - *patternp);

    if(rc != 3 || !step || step > (unsigned)INT_MAX ||
       (min_c == max_c && step != 1) ||
       (min_c != max_c && (min_c > max_c || step > (unsigned)(max_c - min_c) ||
                           (max_c - min_c) > ('z' - 'a'))))

      return GLOBERROR("bad range", *posp, CURLE_URL_MALFORMAT);


    pat->content.CharRange.step = (int)step;
    pat->content.CharRange.ptr_c = pat->content.CharRange.min_c = min_c;
    pat->content.CharRange.max_c = max_c;

    if(multiply(amount, ((pat->content.CharRange.max_c -
                          pat->content.CharRange.min_c) /
                         pat->content.CharRange.step + 1)))
      return GLOBERROR("range overflow", *posp, CURLE_URL_MALFORMAT);
  }
  else if(ISDIGIT(*pattern)) {

    unsigned long min_n;
    unsigned long max_n = 0;
    unsigned long step_n = 0;
    char *endp;

    pat->type = UPTNumRange;
    pat->content.NumRange.padlength = 0;

    if(*pattern == '0') {

      c = pattern;
      while(ISDIGIT(*c)) {
        c++;
        ++pat->content.NumRange.padlength;

      }
    }

    errno = 0;
    min_n = strtoul(pattern, &endp, 10);
    if(errno || (endp == pattern))
      endp = ((void*)0);
    else {
      if(*endp != '-')
        endp = ((void*)0);
      else {
        pattern = endp + 1;
        while(*pattern && ISBLANK(*pattern))
          pattern++;
        if(!ISDIGIT(*pattern)) {
          endp = ((void*)0);
          goto fail;
        }
        errno = 0;
        max_n = strtoul(pattern, &endp, 10);
        if(errno)

          endp = ((void*)0);
        else if(*endp == ':') {
          pattern = endp + 1;
          errno = 0;
          step_n = strtoul(pattern, &endp, 10);
          if(errno)

            endp = ((void*)0);
        }
        else
          step_n = 1;
        if(endp && (*endp == ']')) {
          pattern = endp + 1;
        }
        else
          endp = ((void*)0);
      }
    }

    fail:
    *posp += (pattern - *patternp);

    if(!endp || !step_n ||
       (min_n == max_n && step_n != 1) ||
       (min_n != max_n && (min_n > max_n || step_n > (max_n - min_n))))

      return GLOBERROR("bad range", *posp, CURLE_URL_MALFORMAT);



    pat->content.NumRange.ptr_n = pat->content.NumRange.min_n = min_n;
    pat->content.NumRange.max_n = max_n;
    pat->content.NumRange.step = step_n;

    if(multiply(amount, ((pat->content.NumRange.max_n -
                          pat->content.NumRange.min_n) /
                         pat->content.NumRange.step + 1)))
      return GLOBERROR("range overflow", *posp, CURLE_URL_MALFORMAT);
  }
  else
    return GLOBERROR("bad range specification", *posp, CURLE_URL_MALFORMAT);

  *patternp = pattern;
  return CURLE_OK;
}

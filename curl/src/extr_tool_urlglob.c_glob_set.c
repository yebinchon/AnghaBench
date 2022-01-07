
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int size; char** elements; scalar_t__ ptr_s; } ;
struct TYPE_7__ {TYPE_1__ Set; } ;
struct TYPE_8__ {int globindex; TYPE_2__ content; int type; } ;
typedef TYPE_3__ URLPattern ;
struct TYPE_9__ {char* glob_buffer; size_t size; TYPE_3__* pattern; } ;
typedef TYPE_4__ URLGlob ;
typedef int CURLcode ;


 int CURLE_OK ;
 int CURLE_OUT_OF_MEMORY ;
 int CURLE_URL_MALFORMAT ;
 int FALSE ;
 int GLOBERROR (char*,size_t,int ) ;
 int TRUE ;
 int UPTSet ;
 char** malloc (int) ;
 int multiply (unsigned long*,int) ;
 char** realloc (char**,int) ;
 char* strdup (char*) ;

__attribute__((used)) static CURLcode glob_set(URLGlob *glob, char **patternp,
                         size_t *posp, unsigned long *amount,
                         int globindex)
{



  URLPattern *pat;
  bool done = FALSE;
  char *buf = glob->glob_buffer;
  char *pattern = *patternp;
  char *opattern = pattern;
  size_t opos = *posp-1;

  pat = &glob->pattern[glob->size];

  pat->type = UPTSet;
  pat->content.Set.size = 0;
  pat->content.Set.ptr_s = 0;
  pat->content.Set.elements = ((void*)0);
  pat->globindex = globindex;

  while(!done) {
    switch (*pattern) {
    case '\0':
      return GLOBERROR("unmatched brace", opos, CURLE_URL_MALFORMAT);

    case '{':
    case '[':
      return GLOBERROR("nested brace", *posp, CURLE_URL_MALFORMAT);

    case '}':
      if(opattern == pattern)
        return GLOBERROR("empty string within braces", *posp,
                         CURLE_URL_MALFORMAT);


      if(multiply(amount, pat->content.Set.size + 1))
        return GLOBERROR("range overflow", 0, CURLE_URL_MALFORMAT);


    case ',':

      *buf = '\0';
      if(pat->content.Set.elements) {
        char **new_arr = realloc(pat->content.Set.elements,
                                 (pat->content.Set.size + 1) * sizeof(char *));
        if(!new_arr)
          return GLOBERROR("out of memory", 0, CURLE_OUT_OF_MEMORY);

        pat->content.Set.elements = new_arr;
      }
      else
        pat->content.Set.elements = malloc(sizeof(char *));

      if(!pat->content.Set.elements)
        return GLOBERROR("out of memory", 0, CURLE_OUT_OF_MEMORY);

      pat->content.Set.elements[pat->content.Set.size] =
        strdup(glob->glob_buffer);
      if(!pat->content.Set.elements[pat->content.Set.size])
        return GLOBERROR("out of memory", 0, CURLE_OUT_OF_MEMORY);
      ++pat->content.Set.size;

      if(*pattern == '}') {
        pattern++;
        done = TRUE;
        continue;
      }

      buf = glob->glob_buffer;
      ++pattern;
      ++(*posp);
      break;

    case ']':
      return GLOBERROR("unexpected close bracket", *posp, CURLE_URL_MALFORMAT);

    case '\\':
      if(pattern[1]) {
        ++pattern;
        ++(*posp);
      }

    default:
      *buf++ = *pattern++;
      ++(*posp);
    }
  }

  *patternp = pattern;
  return CURLE_OK;
}

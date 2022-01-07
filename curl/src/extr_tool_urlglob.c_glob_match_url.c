
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int numbuf ;
struct TYPE_10__ {int ptr_n; int padlength; } ;
struct TYPE_9__ {char ptr_c; } ;
struct TYPE_8__ {char** elements; size_t ptr_s; } ;
struct TYPE_11__ {TYPE_3__ NumRange; TYPE_2__ CharRange; TYPE_1__ Set; } ;
struct TYPE_12__ {int globindex; int type; TYPE_4__ content; } ;
typedef TYPE_5__ URLPattern ;
struct TYPE_13__ {unsigned long size; TYPE_5__* pattern; } ;
typedef TYPE_6__ URLGlob ;
typedef scalar_t__ SANITIZEcode ;
typedef int CURLcode ;


 int CURLE_FAILED_INIT ;
 int CURLE_OK ;
 int CURLE_OUT_OF_MEMORY ;
 int CURLE_URL_MALFORMAT ;
 int Curl_safefree (char*) ;
 scalar_t__ ISDIGIT (char) ;
 int SANITIZE_ALLOW_PATH ;
 int SANITIZE_ALLOW_RESERVED ;



 int fprintf (int ,char*,int) ;
 char* malloc (size_t) ;
 int memcpy (char*,char*,size_t) ;
 int msnprintf (char*,int,char*,int ,int ) ;
 char* realloc (char*,size_t) ;
 scalar_t__ sanitize_file_name (char**,char*,int) ;
 int stderr ;
 int strlen (char*) ;
 unsigned long strtoul (char*,char**,int) ;

CURLcode glob_match_url(char **result, char *filename, URLGlob *glob)
{
  char *target;
  size_t allocsize;
  char numbuf[18];
  char *appendthis = (char *)"";
  size_t appendlen = 0;
  size_t stringlen = 0;

  *result = ((void*)0);





  allocsize = strlen(filename) + 1;

  target = malloc(allocsize);
  if(!target)
    return CURLE_OUT_OF_MEMORY;

  while(*filename) {
    if(*filename == '#' && ISDIGIT(filename[1])) {
      char *ptr = filename;
      unsigned long num = strtoul(&filename[1], &filename, 10);
      URLPattern *pat = ((void*)0);

      if(num < glob->size) {
        unsigned long i;
        num--;

        for(i = 0; i<glob->size; i++) {
          if(glob->pattern[i].globindex == (int)num) {
            pat = &glob->pattern[i];
            break;
          }
        }
      }

      if(pat) {
        switch(pat->type) {
        case 128:
          if(pat->content.Set.elements) {
            appendthis = pat->content.Set.elements[pat->content.Set.ptr_s];
            appendlen =
              strlen(pat->content.Set.elements[pat->content.Set.ptr_s]);
          }
          break;
        case 130:
          numbuf[0] = pat->content.CharRange.ptr_c;
          numbuf[1] = 0;
          appendthis = numbuf;
          appendlen = 1;
          break;
        case 129:
          msnprintf(numbuf, sizeof(numbuf), "%0*lu",
                    pat->content.NumRange.padlength,
                    pat->content.NumRange.ptr_n);
          appendthis = numbuf;
          appendlen = strlen(numbuf);
          break;
        default:
          fprintf(stderr, "internal error: invalid pattern type (%d)\n",
                  (int)pat->type);
          Curl_safefree(target);
          return CURLE_FAILED_INIT;
        }
      }
      else {

        filename = ptr;
        appendthis = filename++;
        appendlen = 1;
      }
    }
    else {
      appendthis = filename++;
      appendlen = 1;
    }
    if(appendlen + stringlen >= allocsize) {
      char *newstr;


      allocsize = (appendlen + stringlen) * 2;
      newstr = realloc(target, allocsize + 1);
      if(!newstr) {
        Curl_safefree(target);
        return CURLE_OUT_OF_MEMORY;
      }
      target = newstr;
    }
    memcpy(&target[stringlen], appendthis, appendlen);
    stringlen += appendlen;
  }
  target[stringlen]= '\0';
  *result = target;
  return CURLE_OK;
}

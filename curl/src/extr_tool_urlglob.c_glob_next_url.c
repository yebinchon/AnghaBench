
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


struct TYPE_10__ {int ptr_n; int padlength; int min_n; int max_n; int step; } ;
struct TYPE_9__ {char ptr_c; char max_c; char min_c; int step; } ;
struct TYPE_8__ {size_t ptr_s; size_t size; int * elements; } ;
struct TYPE_11__ {TYPE_3__ NumRange; TYPE_2__ CharRange; TYPE_1__ Set; } ;
struct TYPE_12__ {int type; TYPE_4__ content; } ;
typedef TYPE_5__ URLPattern ;
struct TYPE_13__ {int urllen; char* glob_buffer; int beenhere; size_t size; TYPE_5__* pattern; } ;
typedef TYPE_6__ URLGlob ;
typedef int CURLcode ;


 int CURLE_FAILED_INIT ;
 int CURLE_OK ;
 int CURLE_OUT_OF_MEMORY ;
 int FALSE ;
 int TRUE ;



 int msnprintf (char*,size_t,char*,int ,...) ;
 int printf (char*,int) ;
 char* strdup (char*) ;
 size_t strlen (char*) ;

CURLcode glob_next_url(char **globbed, URLGlob *glob)
{
  URLPattern *pat;
  size_t i;
  size_t len;
  size_t buflen = glob->urllen + 1;
  char *buf = glob->glob_buffer;

  *globbed = ((void*)0);

  if(!glob->beenhere)
    glob->beenhere = 1;
  else {
    bool carry = TRUE;



    for(i = 0; carry && (i < glob->size); i++) {
      carry = FALSE;
      pat = &glob->pattern[glob->size - 1 - i];
      switch(pat->type) {
      case 128:
        if((pat->content.Set.elements) &&
           (++pat->content.Set.ptr_s == pat->content.Set.size)) {
          pat->content.Set.ptr_s = 0;
          carry = TRUE;
        }
        break;
      case 130:
        pat->content.CharRange.ptr_c =
          (char)(pat->content.CharRange.step +
                 (int)((unsigned char)pat->content.CharRange.ptr_c));
        if(pat->content.CharRange.ptr_c > pat->content.CharRange.max_c) {
          pat->content.CharRange.ptr_c = pat->content.CharRange.min_c;
          carry = TRUE;
        }
        break;
      case 129:
        pat->content.NumRange.ptr_n += pat->content.NumRange.step;
        if(pat->content.NumRange.ptr_n > pat->content.NumRange.max_n) {
          pat->content.NumRange.ptr_n = pat->content.NumRange.min_n;
          carry = TRUE;
        }
        break;
      default:
        printf("internal error: invalid pattern type (%d)\n", (int)pat->type);
        return CURLE_FAILED_INIT;
      }
    }
    if(carry) {
      return CURLE_OK;
    }
  }

  for(i = 0; i < glob->size; ++i) {
    pat = &glob->pattern[i];
    switch(pat->type) {
    case 128:
      if(pat->content.Set.elements) {
        msnprintf(buf, buflen, "%s",
                  pat->content.Set.elements[pat->content.Set.ptr_s]);
        len = strlen(buf);
        buf += len;
        buflen -= len;
      }
      break;
    case 130:
      if(buflen) {
        *buf++ = pat->content.CharRange.ptr_c;
        *buf = '\0';
        buflen--;
      }
      break;
    case 129:
      msnprintf(buf, buflen, "%0*lu",
                pat->content.NumRange.padlength,
                pat->content.NumRange.ptr_n);
      len = strlen(buf);
      buf += len;
      buflen -= len;
      break;
    default:
      printf("internal error: invalid pattern type (%d)\n", (int)pat->type);
      return CURLE_FAILED_INIT;
    }
  }

  *globbed = strdup(glob->glob_buffer);
  if(!*globbed)
    return CURLE_OUT_OF_MEMORY;

  return CURLE_OK;
}

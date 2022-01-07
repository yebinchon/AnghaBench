
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct GlobalConfig {scalar_t__ libcurl; } ;
typedef int preamble ;
struct TYPE_3__ {unsigned long value; scalar_t__ name; } ;
typedef TYPE_1__ NameValueUnsigned ;
typedef int CURLoption ;
typedef int CURLcode ;
typedef int CURL ;


 int CODE2 (char*,char*,unsigned long) ;
 int CODE3 (char*,char*,scalar_t__,char*) ;
 int CURLE_OK ;
 int FALSE ;
 int TRUE ;
 int curl_easy_setopt (int *,int ,long) ;
 int msnprintf (char*,int,char*,char const*,...) ;
 int strlen (char*) ;

CURLcode tool_setopt_bitmask(CURL *curl, struct GlobalConfig *config,
                             const char *name, CURLoption tag,
                             const NameValueUnsigned *nvlist,
                             long lval)
{
  CURLcode ret = CURLE_OK;
  bool skip = FALSE;

  ret = curl_easy_setopt(curl, tag, lval);
  if(!lval)
    skip = TRUE;

  if(config->libcurl && !skip && !ret) {

    char preamble[80];
    unsigned long rest = (unsigned long)lval;
    const NameValueUnsigned *nv = ((void*)0);
    msnprintf(preamble, sizeof(preamble),
              "curl_easy_setopt(hnd, %s, ", name);
    for(nv = nvlist; nv->name; nv++) {
      if((nv->value & ~ rest) == 0) {

        rest &= ~ nv->value;
        CODE3("%s(long)%s%s",
              preamble, nv->name, rest ? " |" : ");");
        if(!rest)
          break;

        msnprintf(preamble, sizeof(preamble), "%*s", strlen(preamble), "");
      }
    }



    if(rest)
      CODE2("%s%luUL);", preamble, rest);
  }

 nomem:
  return ret;
}

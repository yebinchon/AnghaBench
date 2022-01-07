
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct GlobalConfig {scalar_t__ libcurl; } ;
struct TYPE_3__ {long name; long value; } ;
typedef TYPE_1__ NameValue ;
typedef int CURLoption ;
typedef int CURLcode ;
typedef int CURL ;


 int CODE2 (char*,char const*,long) ;
 int CURLE_OK ;
 int FALSE ;
 int TRUE ;
 int curl_easy_setopt (int *,int ,long) ;

CURLcode tool_setopt_enum(CURL *curl, struct GlobalConfig *config,
                          const char *name, CURLoption tag,
                          const NameValue *nvlist, long lval)
{
  CURLcode ret = CURLE_OK;
  bool skip = FALSE;

  ret = curl_easy_setopt(curl, tag, lval);
  if(!lval)
    skip = TRUE;

  if(config->libcurl && !skip && !ret) {

    const NameValue *nv = ((void*)0);
    for(nv = nvlist; nv->name; nv++) {
      if(nv->value == lval) break;
    }
    if(! nv->name) {



      CODE2("curl_easy_setopt(hnd, %s, %ldL);", name, lval);
    }
    else {
      CODE2("curl_easy_setopt(hnd, %s, (long)%s);", name, nv->name);
    }
  }

 nomem:
  return ret;
}

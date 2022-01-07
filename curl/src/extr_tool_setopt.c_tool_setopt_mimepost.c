
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct GlobalConfig {TYPE_1__* current; scalar_t__ libcurl; } ;
typedef int curl_mime ;
struct TYPE_2__ {int mimeroot; } ;
typedef int CURLoption ;
typedef scalar_t__ CURLcode ;
typedef int CURL ;


 int CODE2 (char*,char const*,int) ;
 scalar_t__ curl_easy_setopt (int *,int ,int *) ;
 scalar_t__ libcurl_generate_mime (int *,struct GlobalConfig*,int ,int*) ;

CURLcode tool_setopt_mimepost(CURL *curl, struct GlobalConfig *config,
                              const char *name, CURLoption tag,
                              curl_mime *mimepost)
{
  CURLcode ret = curl_easy_setopt(curl, tag, mimepost);
  int mimeno = 0;

  if(!ret && config->libcurl) {
    ret = libcurl_generate_mime(curl, config,
                                config->current->mimeroot, &mimeno);

    if(!ret)
      CODE2("curl_easy_setopt(hnd, %s, mime%d);", name, mimeno);
  }

nomem:
  return ret;
}

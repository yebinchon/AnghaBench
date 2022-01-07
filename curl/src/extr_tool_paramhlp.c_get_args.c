
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct OperationConfig {TYPE_1__* global; scalar_t__ useragent; int proxyuserpwd; int userpwd; int oauth_bearer; scalar_t__ next; } ;
struct TYPE_2__ {int errors; } ;
typedef scalar_t__ CURLcode ;


 scalar_t__ CURLE_OK ;
 scalar_t__ CURLE_OUT_OF_MEMORY ;
 int FALSE ;
 int TRUE ;
 scalar_t__ checkpasswd (char*,size_t const,int,int *) ;
 int helpf (int ,char*) ;
 scalar_t__ my_useragent () ;

CURLcode get_args(struct OperationConfig *config, const size_t i)
{
  CURLcode result = CURLE_OK;
  bool last = (config->next ? FALSE : TRUE);


  if(config->userpwd && !config->oauth_bearer) {
    result = checkpasswd("host", i, last, &config->userpwd);
    if(result)
      return result;
  }


  if(config->proxyuserpwd) {
    result = checkpasswd("proxy", i, last, &config->proxyuserpwd);
    if(result)
      return result;
  }


  if(!config->useragent) {
    config->useragent = my_useragent();
    if(!config->useragent) {
      helpf(config->global->errors, "out of memory\n");
      result = CURLE_OUT_OF_MEMORY;
    }
  }

  return result;
}

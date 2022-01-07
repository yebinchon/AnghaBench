
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct OperationConfig {int dummy; } ;
struct GlobalConfig {int showerror; TYPE_1__* first; TYPE_1__* last; int parallel_max; int styled_output; int errors; } ;
struct TYPE_4__ {struct GlobalConfig* global; } ;
typedef scalar_t__ CURLcode ;


 scalar_t__ CURLE_FAILED_INIT ;
 scalar_t__ CURLE_OK ;
 int CURL_GLOBAL_DEFAULT ;
 int PARALLEL_DEFAULT ;
 int TRUE ;
 int _STAT_DIRSIZE ;
 int _STAT_EXEC_MAGIC ;
 int _STAT_INODE ;
 int _djstat_flags ;
 int config_init (TYPE_1__*) ;
 scalar_t__ curl_global_init (int ) ;
 int free (TYPE_1__*) ;
 scalar_t__ get_libcurl_info () ;
 int helpf (int ,char*) ;
 TYPE_1__* malloc (int) ;
 int stderr ;

__attribute__((used)) static CURLcode main_init(struct GlobalConfig *config)
{
  CURLcode result = CURLE_OK;







  config->showerror = -1;
  config->errors = stderr;
  config->styled_output = TRUE;
  config->parallel_max = PARALLEL_DEFAULT;


  config->first = config->last = malloc(sizeof(struct OperationConfig));
  if(config->first) {

    result = curl_global_init(CURL_GLOBAL_DEFAULT);
    if(!result) {

      result = get_libcurl_info();

      if(!result) {

        config_init(config->first);
        config->first->global = config;
      }
      else {
        helpf(stderr, "error retrieving curl library information\n");
        free(config->first);
      }
    }
    else {
      helpf(stderr, "error initializing curl library\n");
      free(config->first);
    }
  }
  else {
    helpf(stderr, "error initializing curl\n");
    result = CURLE_FAILED_INIT;
  }

  return result;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct OperationConfig {struct OperationConfig* next; int url_list; } ;
struct GlobalConfig {int errors; scalar_t__ libcurl; struct OperationConfig* first; struct OperationConfig* current; } ;
typedef int argv_item_t ;
typedef scalar_t__ ParameterError ;
typedef scalar_t__ CURLcode ;
typedef int CURLSH ;


 scalar_t__ CURLE_FAILED_INIT ;
 scalar_t__ CURLE_OK ;
 scalar_t__ CURLE_OUT_OF_MEMORY ;
 scalar_t__ CURLE_UNSUPPORTED_PROTOCOL ;
 int CURLSHOPT_SHARE ;
 int CURL_LOCK_DATA_CONNECT ;
 int CURL_LOCK_DATA_COOKIE ;
 int CURL_LOCK_DATA_DNS ;
 int CURL_LOCK_DATA_PSL ;
 int CURL_LOCK_DATA_SSL_SESSION ;
 int LC_ALL ;
 scalar_t__ PARAM_ENGINES_REQUESTED ;
 scalar_t__ PARAM_HELP_REQUESTED ;
 scalar_t__ PARAM_LIBCURL_UNSUPPORTED_PROTOCOL ;
 scalar_t__ PARAM_MANUAL_REQUESTED ;
 scalar_t__ PARAM_VERSION_INFO_REQUESTED ;
 int curl_share_cleanup (int *) ;
 int * curl_share_init () ;
 int curl_share_setopt (int *,int ,int ) ;
 int curl_strequal (int ,char*) ;
 int dumpeasysrc (struct GlobalConfig*) ;
 int easysrc_cleanup () ;
 scalar_t__ easysrc_init () ;
 scalar_t__ get_args (struct OperationConfig*,int ) ;
 int helpf (int ,char*) ;
 int hugehelp () ;
 scalar_t__ parse_args (struct GlobalConfig*,int,int *) ;
 int parseconfig (int *,struct GlobalConfig*) ;
 scalar_t__ run_all_transfers (struct GlobalConfig*,int *,scalar_t__) ;
 int setlocale (int ,char*) ;
 int tool_help () ;
 int tool_list_engines () ;
 int tool_version_info () ;

CURLcode operate(struct GlobalConfig *global, int argc, argv_item_t argv[])
{
  CURLcode result = CURLE_OK;







  if((argc == 1) ||
     (!curl_strequal(argv[1], "-q") &&
      !curl_strequal(argv[1], "--disable"))) {
    parseconfig(((void*)0), global);


    if((argc < 2) && (!global->first->url_list)) {
      helpf(global->errors, ((void*)0));
      result = CURLE_FAILED_INIT;
    }
  }

  if(!result) {

    ParameterError res = parse_args(global, argc, argv);
    if(res) {
      result = CURLE_OK;


      if(res == PARAM_HELP_REQUESTED)
        tool_help();

      else if(res == PARAM_MANUAL_REQUESTED)
        hugehelp();

      else if(res == PARAM_VERSION_INFO_REQUESTED)
        tool_version_info();

      else if(res == PARAM_ENGINES_REQUESTED)
        tool_list_engines();
      else if(res == PARAM_LIBCURL_UNSUPPORTED_PROTOCOL)
        result = CURLE_UNSUPPORTED_PROTOCOL;
      else
        result = CURLE_FAILED_INIT;
    }
    else {

      if(global->libcurl) {

        result = easysrc_init();
      }



      if(!result) {
        size_t count = 0;
        struct OperationConfig *operation = global->first;
        CURLSH *share = curl_share_init();
        if(!share) {

          if(global->libcurl) {

            easysrc_cleanup();
          }

          return CURLE_OUT_OF_MEMORY;
        }

        curl_share_setopt(share, CURLSHOPT_SHARE, CURL_LOCK_DATA_COOKIE);
        curl_share_setopt(share, CURLSHOPT_SHARE, CURL_LOCK_DATA_DNS);
        curl_share_setopt(share, CURLSHOPT_SHARE, CURL_LOCK_DATA_SSL_SESSION);
        curl_share_setopt(share, CURLSHOPT_SHARE, CURL_LOCK_DATA_CONNECT);
        curl_share_setopt(share, CURLSHOPT_SHARE, CURL_LOCK_DATA_PSL);


        do {
          result = get_args(operation, count++);

          operation = operation->next;
        } while(!result && operation);


        global->current = global->first;


        result = run_all_transfers(global, share, result);

        curl_share_cleanup(share);

        if(global->libcurl) {

          easysrc_cleanup();


          dumpeasysrc(global);
        }

      }
      else
        helpf(global->errors, "out of memory\n");
    }
  }

  return result;
}

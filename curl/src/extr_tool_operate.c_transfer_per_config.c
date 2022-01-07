
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct curl_tlssessioninfo {scalar_t__ backend; } ;
struct OperationConfig {void* cacert; void* capath; int insecure_ok; TYPE_1__* url_list; } ;
struct GlobalConfig {int errors; } ;
struct TYPE_2__ {int url; } ;
typedef scalar_t__ CURLcode ;
typedef int CURLSH ;
typedef int CURL ;


 scalar_t__ CURLE_FAILED_INIT ;
 scalar_t__ CURLE_OK ;
 scalar_t__ CURLE_OUT_OF_MEMORY ;
 int CURLINFO_TLS_SSL_PTR ;
 scalar_t__ CURLSSLBACKEND_SCHANNEL ;
 int FALSE ;
 scalar_t__ FindWin32CACert (struct OperationConfig*,scalar_t__,char*) ;
 int curl_easy_cleanup (int *) ;
 scalar_t__ curl_easy_getinfo (int *,int ,struct curl_tlssessioninfo**) ;
 int * curl_easy_init () ;
 int curl_free (char*) ;
 char* curlx_getenv (char*) ;
 int helpf (int ,char*) ;
 scalar_t__ single_transfer (struct GlobalConfig*,struct OperationConfig*,int *,int,int*) ;
 void* strdup (char*) ;

__attribute__((used)) static CURLcode transfer_per_config(struct GlobalConfig *global,
                                    struct OperationConfig *config,
                                    CURLSH *share,
                                    bool *added)
{
  CURLcode result = CURLE_OK;
  bool capath_from_env;
  *added = FALSE;


  if(!config->url_list || !config->url_list->url) {
    helpf(global->errors, "no URL specified!\n");
    return CURLE_FAILED_INIT;
  }
  capath_from_env = 0;
  if(!config->cacert &&
     !config->capath &&
     !config->insecure_ok) {
    CURL *curltls = curl_easy_init();
    struct curl_tlssessioninfo *tls_backend_info = ((void*)0);





    result = curl_easy_getinfo(curltls, CURLINFO_TLS_SSL_PTR,
                               &tls_backend_info);
    if(result)
      return result;
    if(tls_backend_info->backend != CURLSSLBACKEND_SCHANNEL) {
      char *env;
      env = curlx_getenv("CURL_CA_BUNDLE");
      if(env) {
        config->cacert = strdup(env);
        if(!config->cacert) {
          curl_free(env);
          helpf(global->errors, "out of memory\n");
          return CURLE_OUT_OF_MEMORY;
        }
      }
      else {
        env = curlx_getenv("SSL_CERT_DIR");
        if(env) {
          config->capath = strdup(env);
          if(!config->capath) {
            curl_free(env);
            helpf(global->errors, "out of memory\n");
            return CURLE_OUT_OF_MEMORY;
          }
          capath_from_env = 1;
        }
        else {
          env = curlx_getenv("SSL_CERT_FILE");
          if(env) {
            config->cacert = strdup(env);
            if(!config->cacert) {
              curl_free(env);
              helpf(global->errors, "out of memory\n");
              return CURLE_OUT_OF_MEMORY;
            }
          }
        }
      }

      if(env)
        curl_free(env);






    }
    curl_easy_cleanup(curltls);
  }

  if(!result)
    result = single_transfer(global, config, share, capath_from_env, added);

  return result;
}

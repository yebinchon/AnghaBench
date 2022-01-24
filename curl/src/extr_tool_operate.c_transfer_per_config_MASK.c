#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct curl_tlssessioninfo {scalar_t__ backend; } ;
struct OperationConfig {void* cacert; void* capath; int /*<<< orphan*/  insecure_ok; TYPE_1__* url_list; } ;
struct GlobalConfig {int /*<<< orphan*/  errors; } ;
struct TYPE_2__ {int /*<<< orphan*/  url; } ;
typedef  scalar_t__ CURLcode ;
typedef  int /*<<< orphan*/  CURLSH ;
typedef  int /*<<< orphan*/  CURL ;

/* Variables and functions */
 scalar_t__ CURLE_FAILED_INIT ; 
 scalar_t__ CURLE_OK ; 
 scalar_t__ CURLE_OUT_OF_MEMORY ; 
 int /*<<< orphan*/  CURLINFO_TLS_SSL_PTR ; 
 scalar_t__ CURLSSLBACKEND_SCHANNEL ; 
 int FALSE ; 
 scalar_t__ FUNC0 (struct OperationConfig*,scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct curl_tlssessioninfo**) ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 char* FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC7 (struct GlobalConfig*,struct OperationConfig*,int /*<<< orphan*/ *,int,int*) ; 
 void* FUNC8 (char*) ; 

__attribute__((used)) static CURLcode FUNC9(struct GlobalConfig *global,
                                    struct OperationConfig *config,
                                    CURLSH *share,
                                    bool *added)
{
  CURLcode result = CURLE_OK;
  bool capath_from_env;
  *added = FALSE;

  /* Check we have a url */
  if(!config->url_list || !config->url_list->url) {
    FUNC6(global->errors, "no URL specified!\n");
    return CURLE_FAILED_INIT;
  }

  /* On WIN32 we can't set the path to curl-ca-bundle.crt
   * at compile time. So we look here for the file in two ways:
   * 1: look at the environment variable CURL_CA_BUNDLE for a path
   * 2: if #1 isn't found, use the windows API function SearchPath()
   *    to find it along the app's path (includes app's dir and CWD)
   *
   * We support the environment variable thing for non-Windows platforms
   * too. Just for the sake of it.
   */
  capath_from_env = false;
  if(!config->cacert &&
     !config->capath &&
     !config->insecure_ok) {
    CURL *curltls = FUNC3();
    struct curl_tlssessioninfo *tls_backend_info = NULL;

    /* With the addition of CAINFO support for Schannel, this search could find
     * a certificate bundle that was previously ignored. To maintain backward
     * compatibility, only perform this search if not using Schannel.
     */
    result = FUNC2(curltls, CURLINFO_TLS_SSL_PTR,
                               &tls_backend_info);
    if(result)
      return result;

    /* Set the CA cert locations specified in the environment. For Windows if
     * no environment-specified filename is found then check for CA bundle
     * default filename curl-ca-bundle.crt in the user's PATH.
     *
     * If Schannel is the selected SSL backend then these locations are
     * ignored. We allow setting CA location for schannel only when explicitly
     * specified by the user via CURLOPT_CAINFO / --cacert.
     */
    if(tls_backend_info->backend != CURLSSLBACKEND_SCHANNEL) {
      char *env;
      env = FUNC5("CURL_CA_BUNDLE");
      if(env) {
        config->cacert = FUNC8(env);
        if(!config->cacert) {
          FUNC4(env);
          FUNC6(global->errors, "out of memory\n");
          return CURLE_OUT_OF_MEMORY;
        }
      }
      else {
        env = FUNC5("SSL_CERT_DIR");
        if(env) {
          config->capath = FUNC8(env);
          if(!config->capath) {
            FUNC4(env);
            FUNC6(global->errors, "out of memory\n");
            return CURLE_OUT_OF_MEMORY;
          }
          capath_from_env = true;
        }
        else {
          env = FUNC5("SSL_CERT_FILE");
          if(env) {
            config->cacert = FUNC8(env);
            if(!config->cacert) {
              FUNC4(env);
              FUNC6(global->errors, "out of memory\n");
              return CURLE_OUT_OF_MEMORY;
            }
          }
        }
      }

      if(env)
        FUNC4(env);
#ifdef WIN32
      else {
        result = FindWin32CACert(config, tls_backend_info->backend,
                                 "curl-ca-bundle.crt");
      }
#endif
    }
    FUNC1(curltls);
  }

  if(!result)
    result = FUNC7(global, config, share, capath_from_env, added);

  return result;
}
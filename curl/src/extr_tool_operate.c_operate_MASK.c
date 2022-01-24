#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct OperationConfig {struct OperationConfig* next; int /*<<< orphan*/  url_list; } ;
struct GlobalConfig {int /*<<< orphan*/  errors; scalar_t__ libcurl; struct OperationConfig* first; struct OperationConfig* current; } ;
typedef  int /*<<< orphan*/  argv_item_t ;
typedef  scalar_t__ ParameterError ;
typedef  scalar_t__ CURLcode ;
typedef  int /*<<< orphan*/  CURLSH ;

/* Variables and functions */
 scalar_t__ CURLE_FAILED_INIT ; 
 scalar_t__ CURLE_OK ; 
 scalar_t__ CURLE_OUT_OF_MEMORY ; 
 scalar_t__ CURLE_UNSUPPORTED_PROTOCOL ; 
 int /*<<< orphan*/  CURLSHOPT_SHARE ; 
 int /*<<< orphan*/  CURL_LOCK_DATA_CONNECT ; 
 int /*<<< orphan*/  CURL_LOCK_DATA_COOKIE ; 
 int /*<<< orphan*/  CURL_LOCK_DATA_DNS ; 
 int /*<<< orphan*/  CURL_LOCK_DATA_PSL ; 
 int /*<<< orphan*/  CURL_LOCK_DATA_SSL_SESSION ; 
 int /*<<< orphan*/  LC_ALL ; 
 scalar_t__ PARAM_ENGINES_REQUESTED ; 
 scalar_t__ PARAM_HELP_REQUESTED ; 
 scalar_t__ PARAM_LIBCURL_UNSUPPORTED_PROTOCOL ; 
 scalar_t__ PARAM_MANUAL_REQUESTED ; 
 scalar_t__ PARAM_VERSION_INFO_REQUESTED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct GlobalConfig*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 scalar_t__ FUNC6 () ; 
 scalar_t__ FUNC7 (struct OperationConfig*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 scalar_t__ FUNC10 (struct GlobalConfig*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,struct GlobalConfig*) ; 
 scalar_t__ FUNC12 (struct GlobalConfig*,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 () ; 

CURLcode FUNC17(struct GlobalConfig *global, int argc, argv_item_t argv[])
{
  CURLcode result = CURLE_OK;

  /* Setup proper locale from environment */
#ifdef HAVE_SETLOCALE
  setlocale(LC_ALL, "");
#endif

  /* Parse .curlrc if necessary */
  if((argc == 1) ||
     (!FUNC3(argv[1], "-q") &&
      !FUNC3(argv[1], "--disable"))) {
    FUNC11(NULL, global); /* ignore possible failure */

    /* If we had no arguments then make sure a url was specified in .curlrc */
    if((argc < 2) && (!global->first->url_list)) {
      FUNC8(global->errors, NULL);
      result = CURLE_FAILED_INIT;
    }
  }

  if(!result) {
    /* Parse the command line arguments */
    ParameterError res = FUNC10(global, argc, argv);
    if(res) {
      result = CURLE_OK;

      /* Check if we were asked for the help */
      if(res == PARAM_HELP_REQUESTED)
        FUNC14();
      /* Check if we were asked for the manual */
      else if(res == PARAM_MANUAL_REQUESTED)
        FUNC9();
      /* Check if we were asked for the version information */
      else if(res == PARAM_VERSION_INFO_REQUESTED)
        FUNC16();
      /* Check if we were asked to list the SSL engines */
      else if(res == PARAM_ENGINES_REQUESTED)
        FUNC15();
      else if(res == PARAM_LIBCURL_UNSUPPORTED_PROTOCOL)
        result = CURLE_UNSUPPORTED_PROTOCOL;
      else
        result = CURLE_FAILED_INIT;
    }
    else {
#ifndef CURL_DISABLE_LIBCURL_OPTION
      if(global->libcurl) {
        /* Initialise the libcurl source output */
        result = FUNC6();
      }
#endif

      /* Perform the main operations */
      if(!result) {
        size_t count = 0;
        struct OperationConfig *operation = global->first;
        CURLSH *share = FUNC1();
        if(!share) {
#ifndef CURL_DISABLE_LIBCURL_OPTION
          if(global->libcurl) {
            /* Cleanup the libcurl source output */
            FUNC5();
          }
#endif
          return CURLE_OUT_OF_MEMORY;
        }

        FUNC2(share, CURLSHOPT_SHARE, CURL_LOCK_DATA_COOKIE);
        FUNC2(share, CURLSHOPT_SHARE, CURL_LOCK_DATA_DNS);
        FUNC2(share, CURLSHOPT_SHARE, CURL_LOCK_DATA_SSL_SESSION);
        FUNC2(share, CURLSHOPT_SHARE, CURL_LOCK_DATA_CONNECT);
        FUNC2(share, CURLSHOPT_SHARE, CURL_LOCK_DATA_PSL);

        /* Get the required arguments for each operation */
        do {
          result = FUNC7(operation, count++);

          operation = operation->next;
        } while(!result && operation);

        /* Set the current operation pointer */
        global->current = global->first;

        /* now run! */
        result = FUNC12(global, share, result);

        FUNC0(share);
#ifndef CURL_DISABLE_LIBCURL_OPTION
        if(global->libcurl) {
          /* Cleanup the libcurl source output */
          FUNC5();

          /* Dump the libcurl code if previously enabled */
          FUNC4(global);
        }
#endif
      }
      else
        FUNC8(global->errors, "out of memory\n");
    }
  }

  return result;
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct OperationConfig {int dummy; } ;
struct GlobalConfig {int showerror; TYPE_1__* first; TYPE_1__* last; int /*<<< orphan*/  parallel_max; int /*<<< orphan*/  styled_output; int /*<<< orphan*/  errors; } ;
struct TYPE_4__ {struct GlobalConfig* global; } ;
typedef  scalar_t__ CURLcode ;

/* Variables and functions */
 scalar_t__ CURLE_FAILED_INIT ; 
 scalar_t__ CURLE_OK ; 
 int /*<<< orphan*/  CURL_GLOBAL_DEFAULT ; 
 int /*<<< orphan*/  PARALLEL_DEFAULT ; 
 int /*<<< orphan*/  TRUE ; 
 int _STAT_DIRSIZE ; 
 int _STAT_EXEC_MAGIC ; 
 int _STAT_INODE ; 
 int _djstat_flags ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 TYPE_1__* FUNC5 (int) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static CURLcode FUNC6(struct GlobalConfig *config)
{
  CURLcode result = CURLE_OK;

#if defined(__DJGPP__) || defined(__GO32__)
  /* stop stat() wasting time */
  _djstat_flags |= _STAT_INODE | _STAT_EXEC_MAGIC | _STAT_DIRSIZE;
#endif

  /* Initialise the global config */
  config->showerror = -1;             /* Will show errors */
  config->errors = stderr;            /* Default errors to stderr */
  config->styled_output = TRUE;       /* enable detection */
  config->parallel_max = PARALLEL_DEFAULT;

  /* Allocate the initial operate config */
  config->first = config->last = FUNC5(sizeof(struct OperationConfig));
  if(config->first) {
    /* Perform the libcurl initialization */
    result = FUNC1(CURL_GLOBAL_DEFAULT);
    if(!result) {
      /* Get information about libcurl */
      result = FUNC3();

      if(!result) {
        /* Initialise the config */
        FUNC0(config->first);
        config->first->global = config;
      }
      else {
        FUNC4(stderr, "error retrieving curl library information\n");
        FUNC2(config->first);
      }
    }
    else {
      FUNC4(stderr, "error initializing curl library\n");
      FUNC2(config->first);
    }
  }
  else {
    FUNC4(stderr, "error initializing curl\n");
    result = CURLE_FAILED_INIT;
  }

  return result;
}
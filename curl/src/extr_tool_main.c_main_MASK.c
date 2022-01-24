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
struct curl_slist {char* data; struct curl_slist* next; } ;
struct GlobalConfig {scalar_t__ showerror; } ;
typedef  int /*<<< orphan*/  global ;
typedef  scalar_t__ CURLcode ;

/* Variables and functions */
 scalar_t__ CURLE_OK ; 
 struct curl_slist* FUNC0 () ; 
 int /*<<< orphan*/  SIGPIPE ; 
 int /*<<< orphan*/  SIG_IGN ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct curl_slist*) ; 
 int /*<<< orphan*/ * FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct GlobalConfig*) ; 
 scalar_t__ FUNC6 (struct GlobalConfig*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (struct GlobalConfig*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC9 (struct GlobalConfig*,int,char**) ; 
 int /*<<< orphan*/  FUNC10 (char*,char*) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (char*,char*) ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  vms_show ; 
 int /*<<< orphan*/  FUNC15 (scalar_t__,int /*<<< orphan*/ ) ; 

int FUNC16(int argc, char *argv[])
{
  CURLcode result = CURLE_OK;
  struct GlobalConfig global;
  FUNC8(&global, 0, sizeof(global));

  /* Perform any platform-specific terminal configuration */
  FUNC1();

  FUNC4();

#if defined(HAVE_SIGNAL) && defined(SIGPIPE)
  (void)signal(SIGPIPE, SIG_IGN);
#endif

  /* Initialize memory tracking */
  FUNC7();

  /* Initialize the curl library - do not call any libcurl functions before
     this point */
  result = FUNC6(&global);

#ifdef WIN32
  /* Undocumented diagnostic option to list the full paths of all loaded
     modules, regardless of whether or not initialization succeeded. */
  if(argc == 2 && !strcmp(argv[1], "--dump-module-paths")) {
    struct curl_slist *item, *head = GetLoadedModulePaths();
    for(item = head; item; item = item->next) {
      printf("%s\n", item->data);
    }
    curl_slist_free_all(head);
    if(!result)
      main_free(&global);
  }
  else
#endif /* WIN32 */
  if(!result) {
    /* Start our curl operation */
    result = FUNC9(&global, argc, argv);

#ifdef __SYMBIAN32__
    if(global.showerror)
      tool_pressanykey();
#endif

    /* Perform the main cleanup */
    FUNC5(&global);
  }

  /* Return the terminal to its original state */
  FUNC11();

#ifdef __NOVELL_LIBC__
  if(getenv("_IN_NETWARE_BASH_") == NULL)
    tool_pressanykey();
#endif

#ifdef __VMS
  vms_special_exit(result, vms_show);
#else
  return (int)result;
#endif
}
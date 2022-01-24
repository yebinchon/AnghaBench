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
struct per_transfer {int /*<<< orphan*/  config; } ;
struct GlobalConfig {int noprogress; int isatty; scalar_t__ parallel; } ;
typedef  int /*<<< orphan*/  CURLcode ;
typedef  int /*<<< orphan*/  CURLSH ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct per_transfer* FUNC2 (struct per_transfer*) ; 
 int /*<<< orphan*/  FUNC3 (struct GlobalConfig*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct GlobalConfig*,struct per_transfer*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC5 (struct GlobalConfig*,int /*<<< orphan*/ *) ; 
 struct per_transfer* transfers ; 

__attribute__((used)) static CURLcode FUNC6(struct GlobalConfig *global,
                                  CURLSH *share,
                                  CURLcode result)
{
  /* Save the values of noprogress and isatty to restore them later on */
  bool orig_noprogress = global->noprogress;
  bool orig_isatty = global->isatty;
  struct per_transfer *per;

  /* Time to actually do the transfers */
  if(!result) {
    if(global->parallel)
      result = FUNC3(global, share);
    else
      result = FUNC5(global, share);
  }

  /* cleanup if there are any left */
  for(per = transfers; per;) {
    bool retry;
    CURLcode result2 = FUNC4(global, per, result, &retry);
    if(!result)
      /* don't overwrite the original error */
      result = result2;

    /* Free list of given URLs */
    FUNC0(per->config);

    /* Release metalink related resources here */
    FUNC1(per->config);
    per = FUNC2(per);
  }

  /* Reset the global config variables */
  global->noprogress = orig_noprogress;
  global->isatty = orig_isatty;


  return result;
}
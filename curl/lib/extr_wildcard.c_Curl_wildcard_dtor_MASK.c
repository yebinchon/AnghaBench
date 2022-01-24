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
struct WildcardData {int /*<<< orphan*/  state; int /*<<< orphan*/ * customptr; int /*<<< orphan*/ * pattern; int /*<<< orphan*/ * path; int /*<<< orphan*/  filelist; int /*<<< orphan*/ * protdata; int /*<<< orphan*/  (* dtor ) (int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  CURLWC_INIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(struct WildcardData *wc)
{
  if(!wc)
    return;

  if(wc->dtor) {
    wc->dtor(wc->protdata);
    wc->dtor = ZERO_NULL;
    wc->protdata = NULL;
  }
  FUNC1(wc->protdata == NULL);

  FUNC0(&wc->filelist, NULL);


  FUNC3(wc->path);
  wc->path = NULL;
  FUNC3(wc->pattern);
  wc->pattern = NULL;

  wc->customptr = NULL;
  wc->state = CURLWC_INIT;
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int dirtyPal; } ;
struct TYPE_4__ {TYPE_1__ m; } ;

/* Variables and functions */
 TYPE_2__ Pico ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC1 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (void*) ; 
 int FUNC3 (void*) ; 
 int FUNC4 (void*) ; 

__attribute__((used)) static int FUNC5(void *afile, int is_save)
{
  int ret;

  if (is_save)
    ret = FUNC4(afile);
  else {
    ret = FUNC2(afile);
    if (ret != 0) {
      FUNC1(afile, 0, SEEK_SET);
      ret = FUNC3(afile);
    }

    if (&PicoLoadStateHook != NULL)
      FUNC0();
    Pico.m.dirtyPal = 1;
  }

  return ret;
}
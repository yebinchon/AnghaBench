#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int (* entryPoint ) (int /*<<< orphan*/ ) ;int /*<<< orphan*/  argv; } ;
typedef  TYPE_1__ pspThreadData ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 

int FUNC3 (unsigned int argc, void *argv)
{
  int result;
  pspThreadData *pThreadData;

  pThreadData = FUNC0(FUNC1());

  result = (*(pThreadData->entryPoint))(pThreadData->argv);

  return result;
}
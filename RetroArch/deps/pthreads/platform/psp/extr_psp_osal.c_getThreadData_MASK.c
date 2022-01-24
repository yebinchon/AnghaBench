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
typedef  int /*<<< orphan*/  pspThreadData ;
typedef  int /*<<< orphan*/  SceUID ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  threadDataKey ; 

__attribute__((used)) static pspThreadData *FUNC2(SceUID threadHandle)
{
   void *pTls = FUNC0(threadHandle);
   pspThreadData *pThreadData = (pspThreadData *)
      FUNC1(pTls, threadDataKey);

   return pThreadData;
}
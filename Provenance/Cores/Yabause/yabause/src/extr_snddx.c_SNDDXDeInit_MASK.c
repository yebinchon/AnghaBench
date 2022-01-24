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
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 scalar_t__ DSBSTATUS_PLAYING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * lpDS8 ; 
 int /*<<< orphan*/ * lpDSB ; 
 int /*<<< orphan*/ * lpDSB2 ; 

void FUNC4(void)
{
   DWORD status=0;

   if (lpDSB2)
   {
      FUNC1(lpDSB2, &status);

      if(status == DSBSTATUS_PLAYING)
         FUNC3(lpDSB2);

      FUNC2(lpDSB2);
      lpDSB2 = NULL;
   }

   if (lpDSB)
   {
      FUNC2(lpDSB);
      lpDSB = NULL;
   }

   if (lpDS8)
   {
      FUNC0(lpDS8);
      lpDS8 = NULL;
   }
}
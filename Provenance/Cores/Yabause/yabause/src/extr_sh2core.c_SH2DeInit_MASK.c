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
struct TYPE_2__ {int /*<<< orphan*/  (* DeInit ) () ;} ;

/* Variables and functions */
 int /*<<< orphan*/ * MSH2 ; 
 TYPE_1__* SH2Core ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * SSH2 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 

void FUNC3()
{
   if (SH2Core)
      SH2Core->DeInit();
   SH2Core = NULL;

   if (MSH2)
   {
      FUNC0(MSH2);
      FUNC1(MSH2);
   }
   MSH2 = NULL;

   if (SSH2)
   {
      FUNC0(SSH2);
      FUNC1(SSH2);
   }
   SSH2 = NULL;
}
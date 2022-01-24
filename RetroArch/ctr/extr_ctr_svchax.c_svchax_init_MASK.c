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
typedef  scalar_t__ u32 ;
typedef  int /*<<< orphan*/  backdoor_fn ;
typedef  int Result ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int*) ; 
 scalar_t__ CURRENT_KPROCESS ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (int,int,int) ; 
 int __ctr_svchax ; 
 int __ctr_svchax_srv ; 
 scalar_t__ __service_ptr ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ FUNC5 (scalar_t__*,scalar_t__*) ; 
 scalar_t__ k_enable_all_svcs ; 
 scalar_t__ FUNC6 () ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__,scalar_t__) ; 

Result FUNC12(bool patch_srv)
{
   bool isNew3DS;
   FUNC0(&isNew3DS);

   u32 kver = FUNC6();

   if (!__ctr_svchax)
   {
      if (__service_ptr)
      {
        u32 luma_major, luma_minor;

        if (kver > FUNC2(2, 50, 11) &&
            (FUNC1(FUNC5(&luma_major, &luma_minor) || luma_major < 8)))
          return -1;
        else if (kver > FUNC2(2, 46, 0) && kver <= FUNC2(2, 50, 11))
          FUNC4();
        else if (kver <= FUNC2(2, 46, 0))
          FUNC3();
      }

      FUNC10((backdoor_fn)k_enable_all_svcs, isNew3DS);

      __ctr_svchax = 1;
   }

   if (patch_srv && !__ctr_svchax_srv)
   {
      u32 PID_kaddr = FUNC7(CURRENT_KPROCESS) + (isNew3DS ? 0xBC : (kver > FUNC2(2, 40, 0)) ? 0xB4 : 0xAC);
      u32 old_PID = FUNC7(PID_kaddr);
      FUNC11(PID_kaddr, 0);
      FUNC8();
      FUNC9();
      FUNC11(PID_kaddr, old_PID);

      __ctr_svchax_srv = 1;
   }

   return 0;
}
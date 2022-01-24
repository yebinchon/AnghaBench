#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int uint64_t ;
typedef  scalar_t__ uint32_t ;
typedef  int /*<<< orphan*/  info ;
struct TYPE_7__ {int /*<<< orphan*/  info; int /*<<< orphan*/  registrations; } ;
typedef  TYPE_1__ WFC_STREAM_T ;
struct TYPE_8__ {int size; } ;
typedef  TYPE_2__ WFC_STREAM_INFO_T ;
typedef  int /*<<< orphan*/  WFCNativeStreamType ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  VCOS_FUNCTION ; 
 scalar_t__ VCOS_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC3 () ; 
 scalar_t__ FUNC4 () ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 TYPE_1__* FUNC7 (int /*<<< orphan*/ ,int) ; 

void FUNC8(WFCNativeStreamType stream) {
   uint64_t pid = FUNC3();
   uint32_t pid_lo = (uint32_t)pid;
   uint32_t pid_hi = (uint32_t)(pid >> 32);

   if (FUNC4() == VCOS_SUCCESS)
   {
      WFC_STREAM_INFO_T info;
      uint32_t status;

      info.size = sizeof(info);
      status = FUNC5(stream, &info);

      if (status == VCOS_SUCCESS)
      {
         WFC_STREAM_T *stream_ptr = FUNC7(stream, true);

         if (stream_ptr)
         {
            stream_ptr->registrations++;
            FUNC1(&stream_ptr->info, &info, info.size);
            FUNC0(stream_ptr);
         }

         FUNC6(stream, pid_lo, pid_hi);
      }
      else
      {
         FUNC2("%s: get stream info failed: %u", VCOS_FUNCTION, status);
      }
   }
}
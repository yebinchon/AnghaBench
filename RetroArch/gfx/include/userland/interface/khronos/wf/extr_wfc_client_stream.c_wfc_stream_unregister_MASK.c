#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int uint64_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_4__ {scalar_t__ registrations; } ;
typedef  TYPE_1__ WFC_STREAM_T ;
typedef  int /*<<< orphan*/  WFCNativeStreamType ;

/* Variables and functions */
 int /*<<< orphan*/  VCOS_FUNCTION ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 () ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 TYPE_1__* FUNC7 (int /*<<< orphan*/ ) ; 

void FUNC8(WFCNativeStreamType stream) {
   uint64_t pid = FUNC2();
   uint32_t pid_lo = (uint32_t)pid;
   uint32_t pid_hi = (uint32_t)(pid >> 32);
   WFC_STREAM_T *stream_ptr = FUNC7(stream);

   if (FUNC3(stream_ptr != NULL))
   {
      FUNC5(stream, pid_lo, pid_hi);

      if (stream_ptr->registrations > 0)
      {
         stream_ptr->registrations--;
         FUNC1("%s: stream %X", VCOS_FUNCTION, stream);
      }
      else
      {
         FUNC0("%s: stream %X already fully unregistered", VCOS_FUNCTION, stream);
      }

      FUNC6(stream_ptr);
   }

   FUNC4();
}
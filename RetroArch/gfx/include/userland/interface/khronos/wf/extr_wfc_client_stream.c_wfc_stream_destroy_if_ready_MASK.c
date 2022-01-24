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
struct TYPE_4__ {scalar_t__ num_of_sources_or_masks; scalar_t__ registrations; int to_be_deleted; int /*<<< orphan*/  handle; scalar_t__ used_for_off_screen; } ;
typedef  TYPE_1__ WFC_STREAM_T ;
typedef  int /*<<< orphan*/  WFCNativeStreamType ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  VCOS_FUNCTION ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__,scalar_t__) ; 
 int FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(WFC_STREAM_T *stream_ptr)
{
   WFCNativeStreamType stream;
   uint64_t pid = FUNC4();
   uint32_t pid_lo = (uint32_t)pid;
   uint32_t pid_hi = (uint32_t)(pid >> 32);

   if (stream_ptr == NULL)
   {
      FUNC1("%s: stream_ptr is NULL", VCOS_FUNCTION);
      return;
   }

   if(stream_ptr->num_of_sources_or_masks > 0
      || stream_ptr->used_for_off_screen
      || stream_ptr->registrations > 0)
   {
      FUNC3("%s: stream: %X not ready: reg:%u srcs:%u o/s:%d", VCOS_FUNCTION,
            stream_ptr->handle, stream_ptr->registrations,
            stream_ptr->num_of_sources_or_masks, stream_ptr->used_for_off_screen);
      FUNC0(stream_ptr);
      return;
   }

   stream = stream_ptr->handle;

   FUNC2("%s: stream: %X to be destroyed", VCOS_FUNCTION, stream);

   // Prevent stream from being found, although it can be recycled.
   stream_ptr->to_be_deleted = true;

   // Delete server-side stream
   FUNC5(stream, pid_lo, pid_hi);

   FUNC0(stream_ptr);

   FUNC6(stream);
}
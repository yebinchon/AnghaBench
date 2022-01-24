#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int used_for_off_screen; } ;
typedef  TYPE_1__ WFC_STREAM_T ;
typedef  scalar_t__ WFCNativeStreamType ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  VCOS_FUNCTION ; 
 scalar_t__ WFC_INVALID_HANDLE ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 TYPE_1__* FUNC3 (scalar_t__) ; 

void FUNC4(WFCNativeStreamType stream, bool used_for_off_screen)
// Called on behalf of an off-screen context, to either set or clear the stream's
// flag indicating that it's being used as output for that context.
{
   if(stream == WFC_INVALID_HANDLE)
      {return;}

   FUNC1("%s: stream 0x%x", VCOS_FUNCTION, stream);

   WFC_STREAM_T *stream_ptr = FUNC3(stream);
   if (!stream_ptr)
      return;

   stream_ptr->used_for_off_screen = used_for_off_screen;

   if (used_for_off_screen)
      FUNC0(stream_ptr);
   else
   {
      // Stream is unlocked by destroy_if_ready
      FUNC2(stream_ptr);
   }
}
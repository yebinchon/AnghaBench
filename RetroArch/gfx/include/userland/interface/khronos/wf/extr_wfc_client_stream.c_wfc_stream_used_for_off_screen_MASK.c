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
struct TYPE_4__ {int used_for_off_screen; } ;
typedef  TYPE_1__ WFC_STREAM_T ;
typedef  int /*<<< orphan*/  WFCNativeStreamType ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  VCOS_FUNCTION ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ) ; 

bool FUNC3(WFCNativeStreamType stream)
// Returns true if this stream exists, and is in use as the output of an
// off-screen context.
{
   bool used_for_off_screen;

   FUNC1("%s: stream 0x%x", VCOS_FUNCTION, stream);

   WFC_STREAM_T *stream_ptr = FUNC2(stream);
   if (!stream_ptr)
      return false;

   used_for_off_screen = stream_ptr->used_for_off_screen;

   FUNC0(stream_ptr);

   return used_for_off_screen;

}
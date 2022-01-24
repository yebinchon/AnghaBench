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
struct TYPE_4__ {scalar_t__ registrations; } ;
typedef  TYPE_1__ WFC_STREAM_T ;
typedef  int /*<<< orphan*/  WFCNativeStreamType ;

/* Variables and functions */
 int /*<<< orphan*/  VCOS_FUNCTION ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ ) ; 

void FUNC6(WFCNativeStreamType stream)
// Destroy a stream - unless it is still in use, in which case, mark it for
// destruction once all users have finished with it.
{
   FUNC1("%s: stream: %X", VCOS_FUNCTION, stream);

   WFC_STREAM_T *stream_ptr = FUNC5(stream);

   if (stream_ptr)
   {
      /* If stream is still in use (e.g. it's attached to at least one source/mask
       * which is associated with at least one element) then destruction is delayed
       * until it's no longer in use. */
      if (stream_ptr->registrations> 0)
      {
         stream_ptr->registrations--;
         FUNC2("%s: stream: %X ready to destroy?", VCOS_FUNCTION, stream);
      }
      else
      {
         FUNC0("%s: stream: %X destroyed when unregistered", VCOS_FUNCTION, stream);
      }

      // Stream is unlocked by destroy_if_ready
      FUNC4(stream_ptr);
   }
   else
   {
      FUNC3("%s: stream %X doesn't exist", VCOS_FUNCTION, stream);
   }

}
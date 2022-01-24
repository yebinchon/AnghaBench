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
struct TYPE_5__ {int num_of_sources_or_masks; } ;
typedef  TYPE_1__ WFC_STREAM_T ;
typedef  int /*<<< orphan*/  WFCNativeStreamType ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  VCOS_FUNCTION ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ ) ; 

bool FUNC5(WFCNativeStreamType stream, bool add_source_or_mask)
// Indicate that a source or mask is now associated with this stream, or should
// now be removed from such an association.
{
   WFC_STREAM_T *stream_ptr = FUNC4(stream);

   if (!stream_ptr)
      return false;

   FUNC1("%s: stream 0x%x %d->%d", VCOS_FUNCTION, stream,
         stream_ptr->num_of_sources_or_masks,
         add_source_or_mask ? stream_ptr->num_of_sources_or_masks + 1 : stream_ptr->num_of_sources_or_masks - 1);

   if(add_source_or_mask)
   {
      stream_ptr->num_of_sources_or_masks++;
      FUNC0(stream_ptr);
   }
   else
   {
      if(FUNC2(stream_ptr->num_of_sources_or_masks > 0))
         {stream_ptr->num_of_sources_or_masks--;}

      // Stream is unlocked by destroy_if_ready
      FUNC3(stream_ptr);
   }

   return true;
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct TYPE_5__ {int flags; } ;
struct TYPE_6__ {TYPE_1__ info; } ;
typedef  TYPE_2__ WFC_STREAM_T ;
typedef  scalar_t__ WFCNativeStreamType ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  VCOS_FUNCTION ; 
 scalar_t__ WFC_INVALID_HANDLE ; 
 int WFC_STREAM_FLAGS_NONE ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int,scalar_t__,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int,int,int) ; 
 scalar_t__ FUNC5 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 TYPE_2__* FUNC7 (scalar_t__) ; 

uint32_t FUNC8
   (WFCNativeStreamType stream, uint32_t width, uint32_t height, uint32_t nbufs)
// Create a stream for an off-screen context to output to, with a specific number of buffers.
{
   WFC_STREAM_T *stream_ptr;
   bool stream_created = false;

   if(!FUNC3(stream != WFC_INVALID_HANDLE))
      {return 1;}

   stream_ptr = FUNC7(stream);
   if (stream_ptr)
   {
      uint32_t flags = stream_ptr->info.flags;

      // Stream already exists, check flags match expected
      FUNC0(stream_ptr);

      if (flags != WFC_STREAM_FLAGS_NONE)
      {
         FUNC1("%s: stream flags mismatch (expected 0x%x, got 0x%x)", VCOS_FUNCTION, WFC_STREAM_FLAGS_NONE, flags);
         return 1;
      }
   }
   else
   {
      // Create stream
      if (FUNC5(stream, WFC_STREAM_FLAGS_NONE) != 0)
         return 1;
      stream_created = true;
   }

   // Allocate buffers on the server.
   if (!FUNC4(stream, width, height, nbufs))
   {
      // Failed to allocate buffers
      FUNC2("%s: failed to allocate %u buffers for stream %X size %ux%u", VCOS_FUNCTION, nbufs, stream, width, height);
      if (stream_created)
         FUNC6(stream);
      return 1;
   }

   return 0;
}
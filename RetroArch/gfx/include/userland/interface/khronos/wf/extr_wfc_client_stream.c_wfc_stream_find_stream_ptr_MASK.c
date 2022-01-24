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
struct TYPE_5__ {int /*<<< orphan*/  to_be_deleted; } ;
typedef  TYPE_1__ WFC_STREAM_T ;
typedef  int /*<<< orphan*/  WFCNativeStreamType ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static WFC_STREAM_T *FUNC3(WFCNativeStreamType stream)
{
   WFC_STREAM_T *stream_ptr = FUNC2(stream);

   if (stream_ptr && !stream_ptr->to_be_deleted)
      FUNC1(stream_ptr);

   FUNC0();

   return stream_ptr;
}
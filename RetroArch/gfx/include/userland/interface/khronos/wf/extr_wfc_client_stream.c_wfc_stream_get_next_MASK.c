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
typedef  int /*<<< orphan*/  WFCNativeStreamType ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  wfc_stream_next_handle ; 

WFCNativeStreamType FUNC2(void)
// In cases where the caller doesn't want to assign a stream number, provide
// one for it.
{
   FUNC0();

   WFCNativeStreamType next_stream = wfc_stream_next_handle;
   wfc_stream_next_handle++;

   FUNC1();

   return next_stream;
}
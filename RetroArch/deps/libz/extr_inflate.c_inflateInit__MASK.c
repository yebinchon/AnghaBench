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
typedef  int /*<<< orphan*/  z_streamp ;

/* Variables and functions */
 int /*<<< orphan*/  DEF_WBITS ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,int) ; 

int FUNC1(z_streamp strm, const char *version, int stream_size)
{
   return FUNC0(strm, DEF_WBITS, version, stream_size);
}
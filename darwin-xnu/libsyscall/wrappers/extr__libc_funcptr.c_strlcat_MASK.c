#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {size_t (* strlcat ) (char*,char const*,size_t) ;} ;

/* Variables and functions */
 TYPE_1__* _libkernel_string_functions ; 
 size_t FUNC0 (char*,char const*,size_t) ; 

__attribute__((visibility("hidden")))
size_t
FUNC1(char * restrict dst, const char * restrict src, size_t maxlen)
{
	return _libkernel_string_functions->strlcat(dst, src, maxlen);
}
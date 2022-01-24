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
typedef  size_t UTF8 ;
typedef  int Boolean ;

/* Variables and functions */
 int FUNC0 (size_t const*,int) ; 
 int* trailingBytesForUTF8 ; 

Boolean FUNC1(const UTF8 *source, const UTF8 *sourceEnd) {
    int length = trailingBytesForUTF8[*source]+1;
    if (source+length > sourceEnd) {
	return false;
    }
    return FUNC0(source, length);
}
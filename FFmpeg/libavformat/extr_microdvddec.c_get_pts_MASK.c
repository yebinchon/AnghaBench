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
typedef  int int64_t ;

/* Variables and functions */
 int AV_NOPTS_VALUE ; 
 int FUNC0 (char const*,char*,int*,char*) ; 

__attribute__((used)) static int64_t FUNC1(const char *buf)
{
    int frame;
    char c;

    if (FUNC0(buf, "{%d}{%c", &frame, &c) == 2)
        return frame;
    return AV_NOPTS_VALUE;
}
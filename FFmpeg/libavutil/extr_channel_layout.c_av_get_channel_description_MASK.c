#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  unsigned long long uint64_t ;
struct TYPE_3__ {char const* description; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int FUNC1 (unsigned long long) ; 
 TYPE_1__* channel_names ; 

const char *FUNC2(uint64_t channel)
{
    int i;
    if (FUNC1(channel) != 1)
        return NULL;
    for (i = 0; i < FUNC0(channel_names); i++)
        if ((1ULL<<i) & channel)
            return channel_names[i].description;
    return NULL;
}
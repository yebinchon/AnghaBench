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

/* Variables and functions */
 char* FUNC0 (char*,int,int,char const*,char const*,char const*) ; 

char *FUNC1(int readorder, int layer, const char *style,
                        const char *speaker, const char *text)
{
    return FUNC0("%d,%d,%s,%s,0,0,0,,%s",
                       readorder, layer, style ? style : "Default",
                       speaker ? speaker : "", text);
}
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
typedef  enum AVPixelFormat { ____Placeholder_AVPixelFormat } AVPixelFormat ;

/* Variables and functions */
 int FUNC0 (int*) ; 
 int* supported_formats ; 

__attribute__((used)) static int FUNC1(enum AVPixelFormat fmt)
{
    int i;

    for (i = 0; i < FUNC0(supported_formats); i++)
        if (supported_formats[i] == fmt)
            return 1;

    return 0;
}
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
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 

__attribute__((used)) static int FUNC1(char *codec_name)
{
    int result = -1;

    if (!FUNC0(codec_name, "mp332")) {
        result = 3982;
    } else if (!FUNC0(codec_name, "acelp16")) {
        result = 2000;
    } else if (!FUNC0(codec_name, "acelp85")) {
        result = 1045;
    }

    return result;
}
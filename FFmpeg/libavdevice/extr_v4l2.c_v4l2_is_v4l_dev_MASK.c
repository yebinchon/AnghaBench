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
 int /*<<< orphan*/  FUNC0 (char const*,char*,int) ; 

__attribute__((used)) static int FUNC1(const char *name)
{
    return !FUNC0(name, "video", 5) ||
           !FUNC0(name, "radio", 5) ||
           !FUNC0(name, "vbi", 3) ||
           !FUNC0(name, "v4l-subdev", 10);
}
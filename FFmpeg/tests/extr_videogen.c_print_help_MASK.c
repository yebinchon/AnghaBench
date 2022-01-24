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
 int DEFAULT_HEIGHT ; 
 int DEFAULT_WIDTH ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,int,int) ; 

void FUNC2(const char* name)
{
    FUNC1("usage: %s file|dir [w=%i] [h=%i]\n"
            "generate a test video stream\n",
            name, DEFAULT_WIDTH, DEFAULT_HEIGHT);
    FUNC0(1);
}
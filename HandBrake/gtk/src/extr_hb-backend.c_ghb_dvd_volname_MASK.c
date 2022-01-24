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
typedef  scalar_t__ gchar ;

/* Variables and functions */
 scalar_t__* FUNC0 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*) ; 
 scalar_t__* FUNC2 (scalar_t__*) ; 

gchar*
FUNC3(const gchar *device)
{
    gchar *name;
    name = FUNC2((gchar*)device);
    if (name != NULL && name[0] != 0)
    {
        name = FUNC0(name);
        FUNC1(name);
        return name;
    }
    return NULL;
}
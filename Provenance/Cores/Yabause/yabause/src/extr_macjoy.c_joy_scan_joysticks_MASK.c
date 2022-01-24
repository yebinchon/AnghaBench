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
typedef  scalar_t__ io_object_t ;
typedef  scalar_t__ io_iterator_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int joy_count ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/ * joys ; 
 int /*<<< orphan*/  kIOMasterPortDefault ; 

int FUNC4(void)    {
    io_iterator_t iter = 0;
    io_object_t dev;

    if(joys != NULL)    {
        return -1;
    }

    /* Get the iterator needed for going through the list of devices. */
    FUNC2(kIOMasterPortDefault, &iter);

    if(iter != 0)   {
        while((dev = FUNC0(iter))) {
            FUNC3(dev);
            FUNC1(dev);
        }

        /* Release the iterator. */
        FUNC1(iter);
    }

    return joy_count;
}
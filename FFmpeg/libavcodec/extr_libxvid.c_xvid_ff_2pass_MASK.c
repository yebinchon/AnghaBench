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
 int XVID_ERR_FAIL ; 
#define  XVID_PLG_AFTER 133 
#define  XVID_PLG_BEFORE 132 
#define  XVID_PLG_CREATE 131 
#define  XVID_PLG_DESTROY 130 
#define  XVID_PLG_FRAME 129 
#define  XVID_PLG_INFO 128 
 int FUNC0 (void*,void*) ; 
 int FUNC1 (void*,void*) ; 
 int FUNC2 (void*,void*) ; 
 int FUNC3 (void*,void*) ; 

__attribute__((used)) static int FUNC4(void *ref, int cmd, void *p1, void *p2)
{
    switch (cmd) {
    case XVID_PLG_INFO:
    case XVID_PLG_FRAME:
        return 0;
    case XVID_PLG_BEFORE:
        return FUNC1(ref, p1);
    case XVID_PLG_CREATE:
        return FUNC2(p1, p2);
    case XVID_PLG_AFTER:
        return FUNC0(ref, p1);
    case XVID_PLG_DESTROY:
        return FUNC3(ref, p1);
    default:
        return XVID_ERR_FAIL;
    }
}
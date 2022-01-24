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
 void* FUNC0 (unsigned int*) ; 
 void* FUNC1 (unsigned int*) ; 
 void* FUNC2 () ; 
 void* FUNC3 (unsigned int*) ; 
 void* FUNC4 () ; 
 void* FUNC5 (unsigned int*) ; 
#define  CDVD_DISKREADY 133 
#define  CDVD_FINDFILE 132 
#define  CDVD_FLUSHCACHE 131 
#define  CDVD_GETDIR 130 
#define  CDVD_STOP 129 
#define  CDVD_TRAYREQ 128 

void *FUNC6(int fno, void *data, int size)
{

    switch (fno) {
        case CDVD_FINDFILE:
            return FUNC1((unsigned *)data);
        case CDVD_GETDIR:
            return FUNC3((unsigned *)data);
        case CDVD_STOP:
            return FUNC4();
        case CDVD_TRAYREQ:
            return FUNC5((unsigned *)data);
        case CDVD_DISKREADY:
            return FUNC0((unsigned *)data);
        case CDVD_FLUSHCACHE:
            return FUNC2();
    }

    return NULL;
}
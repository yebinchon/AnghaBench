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
struct TYPE_3__ {int minor; int major; int service; } ;
typedef  TYPE_1__ tBTA_UTL_COD ;
typedef  int UINT8 ;
typedef  int UINT16 ;
typedef  int /*<<< orphan*/  DEV_CLASS ;
typedef  int /*<<< orphan*/  BOOLEAN ;

/* Variables and functions */
#define  BTA_UTL_CLR_COD_SERVICE_CLASS 132 
#define  BTA_UTL_INIT_COD 131 
#define  BTA_UTL_SET_COD_ALL 130 
#define  BTA_UTL_SET_COD_MAJOR_MINOR 129 
#define  BTA_UTL_SET_COD_SERVICE_CLASS 128 
 int /*<<< orphan*/  FUNC0 (int,int*) ; 
 int BTM_COD_MAJOR_CLASS_MASK ; 
 int /*<<< orphan*/  FUNC1 (int,int*) ; 
 int BTM_COD_MINOR_CLASS_MASK ; 
 int /*<<< orphan*/  FUNC2 (int,int*) ; 
 int BTM_COD_SERVICE_CLASS_MASK ; 
 int* FUNC3 () ; 
 scalar_t__ BTM_SUCCESS ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  TRUE ; 

BOOLEAN FUNC6(tBTA_UTL_COD *p_cod, UINT8 cmd)
{
    UINT8 *dev;
    UINT16 service;
    UINT8  minor, major;
    DEV_CLASS dev_class;

    dev = FUNC3();
    FUNC2( service, dev );
    FUNC1(minor, dev );
    FUNC0(major, dev );

    switch (cmd) {
    case BTA_UTL_SET_COD_MAJOR_MINOR:
        minor = p_cod->minor & BTM_COD_MINOR_CLASS_MASK;
        major = p_cod->major & BTM_COD_MAJOR_CLASS_MASK;
        break;

    case BTA_UTL_SET_COD_SERVICE_CLASS:
        /* clear out the bits that is not SERVICE_CLASS bits */
        p_cod->service &= BTM_COD_SERVICE_CLASS_MASK;
        service = service | p_cod->service;
        break;

    case BTA_UTL_CLR_COD_SERVICE_CLASS:
        p_cod->service &= BTM_COD_SERVICE_CLASS_MASK;
        service = service & (~p_cod->service);
        break;

    case BTA_UTL_SET_COD_ALL:
        minor = p_cod->minor & BTM_COD_MINOR_CLASS_MASK;
        major = p_cod->major & BTM_COD_MAJOR_CLASS_MASK;
        p_cod->service &= BTM_COD_SERVICE_CLASS_MASK;
        service = service | p_cod->service;
        break;

    case BTA_UTL_INIT_COD:
        minor = p_cod->minor & BTM_COD_MINOR_CLASS_MASK;
        major = p_cod->major & BTM_COD_MAJOR_CLASS_MASK;
        service = p_cod->service & BTM_COD_SERVICE_CLASS_MASK;
        break;

    default:
        return FALSE;
    }

    /* convert the fields into the device class type */
    FUNC5(dev_class, minor, major, service);

    if (FUNC4(dev_class) == BTM_SUCCESS) {
        return TRUE;
    }

    return FALSE;
}
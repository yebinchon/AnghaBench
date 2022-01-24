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
struct TYPE_3__ {int /*<<< orphan*/  service; void* major; void* minor; } ;
typedef  TYPE_1__ tBTA_UTL_COD ;
typedef  void* UINT8 ;
typedef  int /*<<< orphan*/  UINT16 ;
typedef  int /*<<< orphan*/  BOOLEAN ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*,void**) ; 
 int /*<<< orphan*/  FUNC1 (void*,void**) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,void**) ; 
 void** FUNC3 () ; 
 int /*<<< orphan*/  TRUE ; 

BOOLEAN FUNC4(tBTA_UTL_COD *p_cod)
{
    UINT8 *dev;
    UINT16 service;
    UINT8  minor, major;

    dev = FUNC3();
    FUNC2( service, dev );
    FUNC1(minor, dev );
    FUNC0(major, dev );

    p_cod->minor = minor;
    p_cod->major = major;
    p_cod->service = service;

    return TRUE;
}
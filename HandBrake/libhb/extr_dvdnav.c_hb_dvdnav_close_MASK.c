#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {struct TYPE_6__* path; scalar_t__ reader; scalar_t__ vmg; scalar_t__ dvdnav; } ;
typedef  TYPE_1__ hb_dvdnav_t ;
struct TYPE_7__ {TYPE_1__ dvdnav; } ;
typedef  TYPE_2__ hb_dvd_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 

__attribute__((used)) static void FUNC5( hb_dvd_t ** _d )
{
    hb_dvdnav_t      * d = &((*_d)->dvdnav);

    if (d->dvdnav) FUNC2( d->dvdnav );
    if (d->vmg)    FUNC4( d->vmg );
    FUNC1(d);
    if (d->reader) FUNC0( d->reader );

    FUNC3(d->path);


    FUNC3( d );
    *_d = NULL;
}
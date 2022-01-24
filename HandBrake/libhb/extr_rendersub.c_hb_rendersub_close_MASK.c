#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int type; int /*<<< orphan*/ * sws; } ;
typedef  TYPE_1__ hb_filter_private_t ;
struct TYPE_9__ {TYPE_1__* private_data; } ;
typedef  TYPE_2__ hb_filter_object_t ;

/* Variables and functions */
#define  CC608SUB 135 
#define  IMPORTSRT 134 
#define  IMPORTSSA 133 
#define  PGSSUB 132 
#define  SSASUB 131 
#define  TX3GSUB 130 
#define  UTF8SUB 129 
#define  VOBSUB 128 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 

__attribute__((used)) static void FUNC6( hb_filter_object_t * filter )
{
    hb_filter_private_t * pv = filter->private_data;

    if (pv->sws != NULL)
    {
        FUNC3(pv->sws);
    }
    switch( pv->type )
    {
        case VOBSUB:
        {
            FUNC5( filter );
        } break;

        case SSASUB:
        {
            FUNC2( filter );
        } break;

        case IMPORTSRT:
        case IMPORTSSA:
        case CC608SUB:
        case UTF8SUB:
        case TX3GSUB:
        {
            FUNC4( filter );
        } break;

        case PGSSUB:
        {
            FUNC1( filter );
        } break;

        default:
        {
            FUNC0("rendersub: unsupported subtitle format %d", pv->type );
        } break;
    }
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {TYPE_3__* list; } ;
struct TYPE_7__ {TYPE_3__* list; } ;
struct TYPE_9__ {struct TYPE_9__* path; TYPE_2__ pes; TYPE_1__ ts; } ;
typedef  TYPE_3__ hb_stream_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 

__attribute__((used)) static void FUNC2( hb_stream_t *d )
{
    FUNC1( d );
    FUNC0( d->ts.list );
    FUNC0( d->pes.list );
    FUNC0( d->path );
    FUNC0( d );
}
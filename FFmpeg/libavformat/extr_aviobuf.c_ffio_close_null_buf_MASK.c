#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {TYPE_1__* opaque; } ;
struct TYPE_7__ {int size; } ;
typedef  TYPE_1__ DynBuffer ;
typedef  TYPE_2__ AVIOContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__**) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 

int FUNC3(AVIOContext *s)
{
    DynBuffer *d = s->opaque;
    int size;

    FUNC2(s);

    size = d->size;
    FUNC0(d);

    FUNC1(&s);

    return size;
}
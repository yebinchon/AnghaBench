#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_25__   TYPE_9__ ;
typedef  struct TYPE_24__   TYPE_8__ ;
typedef  struct TYPE_23__   TYPE_7__ ;
typedef  struct TYPE_22__   TYPE_6__ ;
typedef  struct TYPE_21__   TYPE_5__ ;
typedef  struct TYPE_20__   TYPE_4__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;
typedef  struct TYPE_16__   TYPE_10__ ;

/* Type definitions */
struct TYPE_25__ {TYPE_1__* prev; struct TYPE_25__* next; } ;
struct TYPE_24__ {TYPE_5__* Sym; struct TYPE_24__* next; } ;
struct TYPE_22__ {TYPE_2__* prev; struct TYPE_22__* next; } ;
struct TYPE_23__ {TYPE_8__ eHead; TYPE_6__ vHead; TYPE_9__ fHead; } ;
struct TYPE_21__ {TYPE_4__* next; } ;
struct TYPE_20__ {TYPE_3__* Sym; } ;
struct TYPE_19__ {TYPE_8__* next; } ;
struct TYPE_18__ {TYPE_6__* next; } ;
struct TYPE_17__ {TYPE_9__* next; } ;
struct TYPE_16__ {int /*<<< orphan*/  userData; int /*<<< orphan*/  (* memfree ) (int /*<<< orphan*/ ,TYPE_7__*) ;} ;
typedef  TYPE_6__ TESSvertex ;
typedef  TYPE_7__ TESSmesh ;
typedef  TYPE_8__ TESShalfEdge ;
typedef  TYPE_9__ TESSface ;
typedef  TYPE_10__ TESSalloc ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_7__*) ; 

TESSmesh *FUNC1( TESSalloc* alloc, TESSmesh *mesh1, TESSmesh *mesh2 )
{
	TESSface *f1 = &mesh1->fHead;
	TESSvertex *v1 = &mesh1->vHead;
	TESShalfEdge *e1 = &mesh1->eHead;
	TESSface *f2 = &mesh2->fHead;
	TESSvertex *v2 = &mesh2->vHead;
	TESShalfEdge *e2 = &mesh2->eHead;

	/* Add the faces, vertices, and edges of mesh2 to those of mesh1 */
	if( f2->next != f2 ) {
		f1->prev->next = f2->next;
		f2->next->prev = f1->prev;
		f2->prev->next = f1;
		f1->prev = f2->prev;
	}

	if( v2->next != v2 ) {
		v1->prev->next = v2->next;
		v2->next->prev = v1->prev;
		v2->prev->next = v1;
		v1->prev = v2->prev;
	}

	if( e2->next != e2 ) {
		e1->Sym->next->Sym->next = e2->next;
		e2->next->Sym->next = e1->Sym->next;
		e2->Sym->next->Sym->next = e1;
		e1->Sym->next = e2->Sym->next;
	}

	alloc->memfree( alloc->userData, mesh2 );
	return mesh1;
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int color; struct TYPE_7__** child; } ;
struct TYPE_6__ {int color; TYPE_4__** child; } ;
typedef  TYPE_1__ CheckasmFunc ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_4__*) ; 
 TYPE_1__* FUNC1 (TYPE_1__*,int) ; 

__attribute__((used)) static void FUNC2(CheckasmFunc **root)
{
    CheckasmFunc *f = *root;

    if (FUNC0(f->child[0]) && FUNC0(f->child[1])) {
        f->color ^= 1;
        f->child[0]->color = f->child[1]->color = 1;
    }

    if (!FUNC0(f->child[0]) && FUNC0(f->child[1]))
        *root = FUNC1(f, 0); /* Rotate left */
    else if (FUNC0(f->child[0]) && FUNC0(f->child[0]->child[0]))
        *root = FUNC1(f, 1); /* Rotate right */
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int size; scalar_t__ nused; scalar_t__ nelem; void* val; void* key; struct TYPE_5__* parent; } ;
typedef  TYPE_1__ Map ;

/* Variables and functions */
 void* FUNC0 (int,int) ; 
 TYPE_1__* FUNC1 (int) ; 

__attribute__((used)) static Map *FUNC2(Map *parent, int size) {
    Map *r = FUNC1(sizeof(Map));
    r->parent = parent;
    r->key = FUNC0(size, sizeof(char *));
    r->val = FUNC0(size, sizeof(void *));
    r->size = size;
    r->nelem = 0;
    r->nused = 0;
    return r;
}
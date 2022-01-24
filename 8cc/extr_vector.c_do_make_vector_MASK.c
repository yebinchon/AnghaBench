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
struct TYPE_3__ {int nalloc; scalar_t__ len; void* body; } ;
typedef  TYPE_1__ Vector ;

/* Variables and functions */
 void* FUNC0 (int) ; 
 int FUNC1 (int) ; 

__attribute__((used)) static Vector *FUNC2(int size) {
    Vector *r = FUNC0(sizeof(Vector));
    size = FUNC1(size);
    if (size > 0)
        r->body = FUNC0(sizeof(void *) * size);
    r->len = 0;
    r->nalloc = size;
    return r;
}
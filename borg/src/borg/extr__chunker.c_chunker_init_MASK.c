#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_4__ {size_t window_size; size_t min_size; size_t buf_size; int fh; int /*<<< orphan*/  data; int /*<<< orphan*/  table; int /*<<< orphan*/  chunk_mask; } ;
typedef  TYPE_1__ Chunker ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (size_t) ; 

__attribute__((used)) static Chunker *
FUNC3(size_t window_size, uint32_t chunk_mask, size_t min_size, size_t max_size, uint32_t seed)
{
    Chunker *c = FUNC1(sizeof(Chunker), 1);
    c->window_size = window_size;
    c->chunk_mask = chunk_mask;
    c->min_size = min_size;
    c->table = FUNC0(seed);
    c->buf_size = max_size;
    c->data = FUNC2(c->buf_size);
    c->fh = -1;
    return c;
}
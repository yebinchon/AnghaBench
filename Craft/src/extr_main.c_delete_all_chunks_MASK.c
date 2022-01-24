#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int chunk_count; TYPE_1__* chunks; } ;
struct TYPE_3__ {int /*<<< orphan*/  sign_buffer; int /*<<< orphan*/  buffer; int /*<<< orphan*/  signs; int /*<<< orphan*/  lights; int /*<<< orphan*/  map; } ;
typedef  TYPE_1__ Chunk ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_2__* g ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3() {
    for (int i = 0; i < g->chunk_count; i++) {
        Chunk *chunk = g->chunks + i;
        FUNC1(&chunk->map);
        FUNC1(&chunk->lights);
        FUNC2(&chunk->signs);
        FUNC0(chunk->buffer);
        FUNC0(chunk->sign_buffer);
    }
    g->chunk_count = 0;
}
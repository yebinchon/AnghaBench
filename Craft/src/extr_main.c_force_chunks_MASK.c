#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {scalar_t__ chunk_count; TYPE_3__* chunks; } ;
struct TYPE_11__ {scalar_t__ dirty; } ;
struct TYPE_9__ {int /*<<< orphan*/  z; int /*<<< orphan*/  x; } ;
struct TYPE_10__ {TYPE_1__ state; } ;
typedef  TYPE_1__ State ;
typedef  TYPE_2__ Player ;
typedef  TYPE_3__ Chunk ;

/* Variables and functions */
 scalar_t__ MAX_CHUNKS ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int,int) ; 
 TYPE_3__* FUNC2 (int,int) ; 
 TYPE_5__* g ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 

void FUNC4(Player *player) {
    State *s = &player->state;
    int p = FUNC0(s->x);
    int q = FUNC0(s->z);
    int r = 1;
    for (int dp = -r; dp <= r; dp++) {
        for (int dq = -r; dq <= r; dq++) {
            int a = p + dp;
            int b = q + dq;
            Chunk *chunk = FUNC2(a, b);
            if (chunk) {
                if (chunk->dirty) {
                    FUNC3(chunk);
                }
            }
            else if (g->chunk_count < MAX_CHUNKS) {
                chunk = g->chunks + g->chunk_count++;
                FUNC1(chunk, a, b);
                FUNC3(chunk);
            }
        }
    }
}
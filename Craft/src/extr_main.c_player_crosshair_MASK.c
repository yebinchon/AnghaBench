#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int player_count; int /*<<< orphan*/ * players; } ;
typedef  int /*<<< orphan*/  Player ;

/* Variables and functions */
 float FUNC0 (int) ; 
 TYPE_1__* g ; 
 float FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 float FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

Player *FUNC3(Player *player) {
    Player *result = 0;
    float threshold = FUNC0(5);
    float best = 0;
    for (int i = 0; i < g->player_count; i++) {
        Player *other = g->players + i;
        if (other == player) {
            continue;
        }
        float p = FUNC1(player, other);
        float d = FUNC2(player, other);
        if (d < 96 && p / d < threshold) {
            if (best == 0 || d < best) {
                best = d;
                result = other;
            }
        }
    }
    return result;
}
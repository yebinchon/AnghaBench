#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  block_state; int /*<<< orphan*/  header_state; TYPE_1__* plane; } ;
struct TYPE_6__ {int /*<<< orphan*/  state; } ;
struct TYPE_5__ {TYPE_2__** band; } ;
typedef  TYPE_3__ SnowContext ;

/* Variables and functions */
 int MAX_DECOMPOSITIONS ; 
 int /*<<< orphan*/  MID_STATE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

void FUNC1(SnowContext *s){ //FIXME better initial contexts
    int plane_index, level, orientation;

    for(plane_index=0; plane_index<3; plane_index++){
        for(level=0; level<MAX_DECOMPOSITIONS; level++){
            for(orientation=level ? 1:0; orientation<4; orientation++){
                FUNC0(s->plane[plane_index].band[level][orientation].state, MID_STATE, sizeof(s->plane[plane_index].band[level][orientation].state));
            }
        }
    }
    FUNC0(s->header_state, MID_STATE, sizeof(s->header_state));
    FUNC0(s->block_state, MID_STATE, sizeof(s->block_state));
}
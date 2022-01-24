#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int num_level1_elems; int cues_parsing_deferred; TYPE_2__* level1_elems; TYPE_1__* ctx; } ;
struct TYPE_8__ {scalar_t__ id; int parsed; int /*<<< orphan*/  pos; } ;
struct TYPE_7__ {int flags; } ;
typedef  TYPE_2__ MatroskaLevel1Element ;
typedef  TYPE_3__ MatroskaDemuxContext ;

/* Variables and functions */
 int AVFMT_FLAG_IGNIDX ; 
 scalar_t__ MATROSKA_ID_CUES ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 scalar_t__ FUNC1 (TYPE_3__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(MatroskaDemuxContext *matroska) {
    int i;

    if (matroska->ctx->flags & AVFMT_FLAG_IGNIDX)
        return;

    for (i = 0; i < matroska->num_level1_elems; i++) {
        MatroskaLevel1Element *elem = &matroska->level1_elems[i];
        if (elem->id == MATROSKA_ID_CUES && !elem->parsed) {
            if (FUNC1(matroska, elem->pos) < 0)
                matroska->cues_parsing_deferred = -1;
            elem->parsed = 1;
            break;
        }
    }

    FUNC0(matroska);
}
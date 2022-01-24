#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_14__ {int /*<<< orphan*/ * rd_scratchpad; } ;
struct TYPE_16__ {int linesize; int lambda2; int /*<<< orphan*/ ** dest; int /*<<< orphan*/  block; TYPE_2__* avctx; void* tex_pb; void* pb2; scalar_t__ data_partitioning; void* pb; TYPE_1__ sc; int /*<<< orphan*/ * blocks; } ;
struct TYPE_15__ {scalar_t__ mb_decision; } ;
typedef  void* PutBitContext ;
typedef  TYPE_3__ MpegEncContext ;

/* Variables and functions */
 int FF_LAMBDA_SHIFT ; 
 scalar_t__ FF_MB_DECISION_RD ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **,int /*<<< orphan*/ **,int) ; 
 int FUNC6 (void**) ; 
 int FUNC7 (TYPE_3__*) ; 

__attribute__((used)) static inline void FUNC8(MpegEncContext *s, MpegEncContext *backup, MpegEncContext *best, int type,
                           PutBitContext pb[2], PutBitContext pb2[2], PutBitContext tex_pb[2],
                           int *dmin, int *next_block, int motion_x, int motion_y)
{
    int score;
    uint8_t *dest_backup[3];

    FUNC2(s, backup, type);

    s->block= s->blocks[*next_block];
    s->pb= pb[*next_block];
    if(s->data_partitioning){
        s->pb2   = pb2   [*next_block];
        s->tex_pb= tex_pb[*next_block];
    }

    if(*next_block){
        FUNC5(dest_backup, s->dest, sizeof(s->dest));
        s->dest[0] = s->sc.rd_scratchpad;
        s->dest[1] = s->sc.rd_scratchpad + 16*s->linesize;
        s->dest[2] = s->sc.rd_scratchpad + 16*s->linesize + 8;
        FUNC0(s->linesize >= 32); //FIXME
    }

    FUNC3(s, motion_x, motion_y);

    score= FUNC6(&s->pb);
    if(s->data_partitioning){
        score+= FUNC6(&s->pb2);
        score+= FUNC6(&s->tex_pb);
    }

    if(s->avctx->mb_decision == FF_MB_DECISION_RD){
        FUNC4(s, s->block);

        score *= s->lambda2;
        score += FUNC7(s) << FF_LAMBDA_SHIFT;
    }

    if(*next_block){
        FUNC5(s->dest, dest_backup, sizeof(s->dest));
    }

    if(score<*dmin){
        *dmin= score;
        *next_block^=1;

        FUNC1(best, s, type);
    }
}
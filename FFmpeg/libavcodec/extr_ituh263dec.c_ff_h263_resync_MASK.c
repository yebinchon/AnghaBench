#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ codec_id; int /*<<< orphan*/  gb; TYPE_1__* avctx; int /*<<< orphan*/  last_resync_gb; scalar_t__ studio_profile; } ;
struct TYPE_5__ {int /*<<< orphan*/  priv_data; } ;
typedef  TYPE_2__ MpegEncContext ;
typedef  int /*<<< orphan*/  GetBitContext ;

/* Variables and functions */
 scalar_t__ AV_CODEC_ID_MPEG4 ; 
 scalar_t__ CONFIG_MPEG4_DECODER ; 
 scalar_t__ SLICE_START_CODE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (TYPE_2__*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

int FUNC10(MpegEncContext *s){
    int left, pos, ret;

    /* In MPEG-4 studio mode look for a new slice startcode
     * and decode slice header */
    if(s->codec_id==AV_CODEC_ID_MPEG4 && s->studio_profile) {
        FUNC0(&s->gb);

        while (FUNC4(&s->gb) >= 32 && FUNC7(&s->gb, 32) != SLICE_START_CODE) {
            FUNC2(&s->gb, 8);
        }

        if (FUNC4(&s->gb) >= 32 && FUNC7(&s->gb, 32) == SLICE_START_CODE)
            return FUNC3(&s->gb);
        else
            return -1;
    }

    if(s->codec_id==AV_CODEC_ID_MPEG4){
        FUNC9(&s->gb);
        FUNC0(&s->gb);
    }

    if(FUNC6(&s->gb, 16)==0){
        pos= FUNC3(&s->gb);
        if(CONFIG_MPEG4_DECODER && s->codec_id==AV_CODEC_ID_MPEG4)
            ret= FUNC1(s->avctx->priv_data);
        else
            ret= FUNC5(s);
        if(ret>=0)
            return pos;
    }
    //OK, it's not where it is supposed to be ...
    s->gb= s->last_resync_gb;
    FUNC0(&s->gb);
    left= FUNC4(&s->gb);

    for(;left>16+1+5+5; left-=8){
        if(FUNC6(&s->gb, 16)==0){
            GetBitContext bak= s->gb;

            pos= FUNC3(&s->gb);
            if(CONFIG_MPEG4_DECODER && s->codec_id==AV_CODEC_ID_MPEG4)
                ret= FUNC1(s->avctx->priv_data);
            else
                ret= FUNC5(s);
            if(ret>=0)
                return pos;

            s->gb= bak;
        }
        FUNC8(&s->gb, 8);
    }

    return -1;
}
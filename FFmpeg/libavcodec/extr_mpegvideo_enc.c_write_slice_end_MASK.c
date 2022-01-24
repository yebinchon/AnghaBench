#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ codec_id; scalar_t__ out_format; int /*<<< orphan*/  misc_bits; scalar_t__ partitioned_frame; TYPE_1__* avctx; int /*<<< orphan*/  pb; } ;
struct TYPE_7__ {int flags; } ;
typedef  TYPE_2__ MpegEncContext ;

/* Variables and functions */
 int AV_CODEC_FLAG_PASS1 ; 
 scalar_t__ AV_CODEC_ID_MPEG4 ; 
 scalar_t__ CONFIG_MJPEG_ENCODER ; 
 scalar_t__ CONFIG_MPEG4_ENCODER ; 
 scalar_t__ FMT_MJPEG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (TYPE_2__*) ; 

__attribute__((used)) static void FUNC6(MpegEncContext *s){
    if(CONFIG_MPEG4_ENCODER && s->codec_id==AV_CODEC_ID_MPEG4){
        if(s->partitioned_frame){
            FUNC2(s);
        }

        FUNC3(&s->pb);
    }else if(CONFIG_MJPEG_ENCODER && s->out_format == FMT_MJPEG){
        FUNC1(s);
    }

    FUNC0(&s->pb);
    FUNC4(&s->pb);

    if ((s->avctx->flags & AV_CODEC_FLAG_PASS1) && !s->partitioned_frame)
        s->misc_bits+= FUNC5(s);
}
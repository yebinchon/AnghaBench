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
struct TYPE_4__ {scalar_t__ pict_type; scalar_t__ qscale; scalar_t__ no_rounding; int f_code; scalar_t__ unrestricted_mv; scalar_t__ alt_inter_vlc; scalar_t__ umvplus; int modified_quant; int loop_filter; int h263_aic; int /*<<< orphan*/  c_dc_scale_table; int /*<<< orphan*/  y_dc_scale_table; int /*<<< orphan*/  pb; scalar_t__ mb_y; scalar_t__ mb_x; } ;
typedef  TYPE_1__ MpegEncContext ;

/* Variables and functions */
 scalar_t__ AV_PICTURE_TYPE_I ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  ff_aic_dc_scale_table ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  ff_mpeg1_dc_scale_table ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int) ; 

void FUNC4(MpegEncContext *s, int picture_number){
    FUNC2(&s->pb, 2, s->pict_type); //I 0 vs. 1 ?
    FUNC2(&s->pb, 1, 0);     /* unknown bit */
    FUNC2(&s->pb, 5, s->qscale);

    FUNC3(&s->pb, 8, picture_number); //FIXME wrong, but correct is not known
    s->mb_x= s->mb_y= 0;
    FUNC1(s);

    FUNC2(&s->pb, 1, s->no_rounding);

    FUNC0(s->f_code == 1);
    FUNC0(s->unrestricted_mv == 0);
    FUNC0(s->alt_inter_vlc == 0);
    FUNC0(s->umvplus == 0);
    FUNC0(s->modified_quant==1);
    FUNC0(s->loop_filter==1);

    s->h263_aic= s->pict_type == AV_PICTURE_TYPE_I;
    if(s->h263_aic){
        s->y_dc_scale_table=
        s->c_dc_scale_table= ff_aic_dc_scale_table;
    }else{
        s->y_dc_scale_table=
        s->c_dc_scale_table= ff_mpeg1_dc_scale_table;
    }
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ VASurfaceID ;
struct TYPE_10__ {TYPE_2__* rps; } ;
struct TYPE_9__ {int /*<<< orphan*/  frame; } ;
struct TYPE_8__ {int nb_refs; TYPE_1__** ref; } ;
struct TYPE_7__ {int /*<<< orphan*/  frame; } ;
typedef  TYPE_3__ HEVCFrame ;
typedef  TYPE_4__ HEVCContext ;

/* Variables and functions */
 size_t LT_CURR ; 
 size_t ST_CURR_AFT ; 
 size_t ST_CURR_BEF ; 
 int VA_PICTURE_HEVC_RPS_LT_CURR ; 
 int VA_PICTURE_HEVC_RPS_ST_CURR_AFTER ; 
 int VA_PICTURE_HEVC_RPS_ST_CURR_BEFORE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(const HEVCContext *h, const HEVCFrame *pic)
{
    VASurfaceID pic_surf = FUNC0(pic->frame);
    int i;

    for (i = 0; i < h->rps[ST_CURR_BEF].nb_refs; i++) {
        if (pic_surf == FUNC0(h->rps[ST_CURR_BEF].ref[i]->frame))
            return VA_PICTURE_HEVC_RPS_ST_CURR_BEFORE;
    }

    for (i = 0; i < h->rps[ST_CURR_AFT].nb_refs; i++) {
        if (pic_surf == FUNC0(h->rps[ST_CURR_AFT].ref[i]->frame))
            return VA_PICTURE_HEVC_RPS_ST_CURR_AFTER;
    }

    for (i = 0; i < h->rps[LT_CURR].nb_refs; i++) {
        if (pic_surf == FUNC0(h->rps[LT_CURR].ref[i]->frame))
            return VA_PICTURE_HEVC_RPS_LT_CURR;
    }

    return 0;
}
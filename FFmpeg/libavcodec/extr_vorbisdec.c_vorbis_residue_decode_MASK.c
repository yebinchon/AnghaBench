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
struct TYPE_7__ {int type; } ;
typedef  TYPE_1__ vorbis_residue ;
struct TYPE_8__ {int /*<<< orphan*/  avctx; } ;
typedef  TYPE_2__ vorbis_context ;
typedef  int /*<<< orphan*/  uint8_t ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (TYPE_2__*,TYPE_1__*,unsigned int,int /*<<< orphan*/ *,float*,unsigned int,unsigned int,int) ; 

__attribute__((used)) static inline int FUNC2(vorbis_context *vc, vorbis_residue *vr,
                                        unsigned ch,
                                        uint8_t *do_not_decode,
                                        float *vec, unsigned vlen,
                                        unsigned ch_left)
{
    if (vr->type == 2)
        return FUNC1(vc, vr, ch, do_not_decode, vec, vlen, ch_left, 2);
    else if (vr->type == 1)
        return FUNC1(vc, vr, ch, do_not_decode, vec, vlen, ch_left, 1);
    else if (vr->type == 0)
        return FUNC1(vc, vr, ch, do_not_decode, vec, vlen, ch_left, 0);
    else {
        FUNC0(vc->avctx, AV_LOG_ERROR, " Invalid residue type while residue decode?! \n");
        return AVERROR_INVALIDDATA;
    }
}
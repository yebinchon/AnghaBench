#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int* linesize; scalar_t__* data; } ;
struct TYPE_10__ {int bpc; } ;
typedef  TYPE_1__ FieldMatchContext ;
typedef  TYPE_2__ AVFrame ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,int,scalar_t__,int,int,int const) ; 
 int FUNC1 (TYPE_1__ const*,TYPE_2__ const*,int) ; 
 int FUNC2 (TYPE_1__ const*,TYPE_2__ const*,int) ; 

__attribute__((used)) static void FUNC3(const FieldMatchContext *fm, AVFrame *dst,
                        const AVFrame *src, int field)
{
    int plane;
    for (plane = 0; plane < 4 && src->data[plane] && src->linesize[plane]; plane++) {
        const int plane_h = FUNC1(fm, src, plane);
        const int nb_copy_fields = (plane_h >> 1) + (field ? 0 : (plane_h & 1));
        FUNC0(dst->data[plane] + field*dst->linesize[plane], dst->linesize[plane] << 1,
                            src->data[plane] + field*src->linesize[plane], src->linesize[plane] << 1,
                            FUNC2(fm, src, plane) * fm->bpc, nb_copy_fields);
    }
}
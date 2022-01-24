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
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_10__ {TYPE_2__* cb4x4; TYPE_1__* cb2x2; int /*<<< orphan*/ * out_buf; } ;
struct TYPE_9__ {int numCB2; int numCB4; size_t* f2i2; int* i2f2; size_t* f2i4; } ;
struct TYPE_8__ {size_t* idx; } ;
struct TYPE_7__ {int u; int v; int /*<<< orphan*/  y; } ;
typedef  TYPE_3__ RoqTempdata ;
typedef  TYPE_4__ RoqContext ;

/* Variables and functions */
 int /*<<< orphan*/  RoQ_QUAD_CODEBOOK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **,int) ; 

__attribute__((used)) static void FUNC4(RoqContext *enc, RoqTempdata *tempData)
{
    int i, j;
    uint8_t **outp= &enc->out_buf;

    if (tempData->numCB2) {
        FUNC2(outp, RoQ_QUAD_CODEBOOK);
        FUNC3(outp, tempData->numCB2*6 + tempData->numCB4*4);
        FUNC1(outp, tempData->numCB4);
        FUNC1(outp, tempData->numCB2);

        for (i=0; i<tempData->numCB2; i++) {
            FUNC0(outp, enc->cb2x2[tempData->f2i2[i]].y, 4);
            FUNC1(outp, enc->cb2x2[tempData->f2i2[i]].u);
            FUNC1(outp, enc->cb2x2[tempData->f2i2[i]].v);
        }

        for (i=0; i<tempData->numCB4; i++)
            for (j=0; j<4; j++)
                FUNC1(outp, tempData->i2f2[enc->cb4x4[tempData->f2i4[i]].idx[j]]);

    }
}
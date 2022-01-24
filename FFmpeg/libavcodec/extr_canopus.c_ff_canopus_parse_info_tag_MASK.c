#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_4__ {int /*<<< orphan*/  den; int /*<<< orphan*/  num; } ;
struct TYPE_5__ {int /*<<< orphan*/  field_order; TYPE_1__ sample_aspect_ratio; } ;
typedef  int /*<<< orphan*/  GetByteContext ;
typedef  TYPE_2__ AVCodecContext ;

/* Variables and functions */
 int /*<<< orphan*/  AV_FIELD_BB ; 
 int /*<<< orphan*/  AV_FIELD_PROGRESSIVE ; 
 int /*<<< orphan*/  AV_FIELD_TT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int,int) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 

int FUNC4(AVCodecContext *avctx,
                              const uint8_t *src, size_t size)
{
    GetByteContext gbc;
    int par_x, par_y, field_order;

    FUNC2(&gbc, src, size);

    /* Parse aspect ratio. */
    FUNC3(&gbc, 8); // unknown, 16 bits 1
    par_x = FUNC1(&gbc);
    par_y = FUNC1(&gbc);
    if (par_x && par_y)
        FUNC0(&avctx->sample_aspect_ratio.num,
                  &avctx->sample_aspect_ratio.den,
                  par_x, par_y, 255);

    /* Short INFO tag (used in CLLC) has only AR data. */
    if (size == 0x18)
        return 0;

    FUNC3(&gbc, 16); // unknown RDRT tag

    /* Parse FIEL tag. */
    FUNC3(&gbc, 8); // 'FIEL' and 4 bytes 0
    field_order = FUNC1(&gbc);
    switch (field_order) {
    case 0: avctx->field_order = AV_FIELD_TT; break;
    case 1: avctx->field_order = AV_FIELD_BB; break;
    case 2: avctx->field_order = AV_FIELD_PROGRESSIVE; break;
    }

    return 0;
}
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
typedef  int /*<<< orphan*/  int32_t ;
typedef  int /*<<< orphan*/  display_matrix ;
struct TYPE_5__ {TYPE_1__* priv_data; } ;
struct TYPE_4__ {scalar_t__ lens_facing; int /*<<< orphan*/  sensor_orientation; } ;
typedef  TYPE_1__ AndroidCameraCtx ;
typedef  int /*<<< orphan*/  AVStream ;
typedef  TYPE_2__ AVFormatContext ;

/* Variables and functions */
 scalar_t__ ACAMERA_LENS_FACING_FRONT ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_PKT_DATA_DISPLAYMATRIX ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC5(AVFormatContext *avctx, AVStream *st)
{
    AndroidCameraCtx *ctx = avctx->priv_data;
    uint8_t *side_data;
    int32_t display_matrix[9];

    FUNC2(display_matrix, ctx->sensor_orientation);

    if (ctx->lens_facing == ACAMERA_LENS_FACING_FRONT) {
        FUNC1(display_matrix, 1, 0);
    }

    side_data = FUNC3(st,
            AV_PKT_DATA_DISPLAYMATRIX, sizeof(display_matrix));

    if (!side_data) {
        return FUNC0(ENOMEM);
    }

    FUNC4(side_data, display_matrix, sizeof(display_matrix));

    return 0;
}
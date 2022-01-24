#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int type; int temporal_id; int /*<<< orphan*/  gb; } ;
typedef  TYPE_1__ H2645NAL ;
typedef  int /*<<< orphan*/  GetBitContext ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AV_LOG_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (void*,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ,int,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static int FUNC4(H2645NAL *nal, void *logctx)
{
    GetBitContext *gb = &nal->gb;
    int nuh_layer_id;

    if (FUNC2(gb) != 0)
        return AVERROR_INVALIDDATA;

    nal->type = FUNC1(gb, 6);

    nuh_layer_id   = FUNC1(gb, 6);
    nal->temporal_id = FUNC1(gb, 3) - 1;
    if (nal->temporal_id < 0)
        return AVERROR_INVALIDDATA;

    FUNC0(logctx, AV_LOG_DEBUG,
           "nal_unit_type: %d(%s), nuh_layer_id: %d, temporal_id: %d\n",
           nal->type, FUNC3(nal->type), nuh_layer_id, nal->temporal_id);

    return nuh_layer_id == 0;
}
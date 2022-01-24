#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int data_size; scalar_t__ data; int /*<<< orphan*/  data_ref; } ;
struct TYPE_8__ {int /*<<< orphan*/  log_ctx; } ;
struct TYPE_7__ {int data_size; scalar_t__ data; int /*<<< orphan*/  data_ref; } ;
typedef  int /*<<< orphan*/  GetBitContext ;
typedef  TYPE_1__ CodedBitstreamUnit ;
typedef  TYPE_2__ CodedBitstreamContext ;
typedef  TYPE_3__ AV1RawTileData ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(CodedBitstreamContext *ctx,
                                 CodedBitstreamUnit *unit,
                                 GetBitContext *gbc,
                                 AV1RawTileData *td)
{
    int pos;

    pos = FUNC4(gbc);
    if (pos >= 8 * unit->data_size) {
        FUNC3(ctx->log_ctx, AV_LOG_ERROR, "Bitstream ended before "
               "any data in tile group (%d bits read).\n", pos);
        return AVERROR_INVALIDDATA;
    }
    // Must be byte-aligned at this point.
    FUNC1(pos % 8 == 0);

    td->data_ref = FUNC2(unit->data_ref);
    if (!td->data_ref)
        return FUNC0(ENOMEM);

    td->data      = unit->data      + pos / 8;
    td->data_size = unit->data_size - pos / 8;

    return 0;
}
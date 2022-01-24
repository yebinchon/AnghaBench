#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
typedef  int uint64_t ;
struct TYPE_5__ {scalar_t__ trace_enable; } ;
typedef  int /*<<< orphan*/  PutBitContext ;
typedef  TYPE_1__ CodedBitstreamContext ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int,char const*,int /*<<< orphan*/ *,char*,int) ; 
 int FUNC2 (TYPE_1__*,int /*<<< orphan*/ *,int,char*,int*,int,int,int) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(CodedBitstreamContext *ctx, PutBitContext *pbc,
                                const char *name, uint64_t value)
{
    int position, err, len, i;
    uint8_t byte;

    len = (FUNC0(value) + 7) / 7;

    if (ctx->trace_enable)
        position = FUNC3(pbc);

    for (i = 0; i < len; i++) {
        int subscript[2] = { 1, i };

        byte = value >> (7 * i) & 0x7f;
        if (i < len - 1)
            byte |= 0x80;

        err = FUNC2(ctx, pbc, 8, "leb128_byte[i]", subscript,
                                    byte, 0x00, 0xff);
        if (err < 0)
            return err;
    }

    if (ctx->trace_enable)
        FUNC1(ctx, position, name, NULL, "", value);

    return 0;
}
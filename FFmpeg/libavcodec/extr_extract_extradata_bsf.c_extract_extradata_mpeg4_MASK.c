#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  const uint8_t ;
typedef  int uint32_t ;
struct TYPE_8__ {TYPE_1__* priv_data; } ;
struct TYPE_7__ {int size; int /*<<< orphan*/  const* data; } ;
struct TYPE_6__ {scalar_t__ remove; } ;
typedef  TYPE_1__ ExtractExtradataContext ;
typedef  TYPE_2__ AVPacket ;
typedef  TYPE_3__ AVBSFContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ AV_INPUT_BUFFER_PADDING_SIZE ; 
 int /*<<< orphan*/  ENOMEM ; 
 int UINT32_MAX ; 
 int /*<<< orphan*/  const* FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  const* FUNC2 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC5(AVBSFContext *ctx, AVPacket *pkt,
                                   uint8_t **data, int *size)
{
    ExtractExtradataContext *s = ctx->priv_data;
    const uint8_t *ptr = pkt->data, *end = pkt->data + pkt->size;
    uint32_t state = UINT32_MAX;

    while (ptr < end) {
        ptr = FUNC2(ptr, end, &state);
        if (state == 0x1B3 || state == 0x1B6) {
            if (ptr - pkt->data > 4) {
                *size = ptr - 4 - pkt->data;
                *data = FUNC1(*size + AV_INPUT_BUFFER_PADDING_SIZE);
                if (!*data)
                    return FUNC0(ENOMEM);

                FUNC3(*data, pkt->data, *size);
                FUNC4(*data + *size, 0, AV_INPUT_BUFFER_PADDING_SIZE);

                if (s->remove) {
                    pkt->data += *size;
                    pkt->size -= *size;
                }
            }
            break;
        }
    }
    return 0;
}
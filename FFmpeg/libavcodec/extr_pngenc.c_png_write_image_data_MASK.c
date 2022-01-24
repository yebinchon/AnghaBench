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
typedef  int uint32_t ;
struct TYPE_5__ {scalar_t__ codec_id; scalar_t__ frame_number; TYPE_1__* priv_data; } ;
struct TYPE_4__ {int sequence_number; int /*<<< orphan*/  const* bytestream; } ;
typedef  TYPE_1__ PNGEncContext ;
typedef  TYPE_2__ AVCodecContext ;
typedef  int /*<<< orphan*/  AVCRC ;

/* Variables and functions */
 scalar_t__ AV_CODEC_ID_PNG ; 
 int /*<<< orphan*/  AV_CRC_32_IEEE_LE ; 
 int FUNC0 (float,char,char,char) ; 
 int /*<<< orphan*/  FUNC1 (char,char,char,char) ; 
 int FUNC2 (int /*<<< orphan*/  const*,int,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  const**,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/  const**,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int) ; 

__attribute__((used)) static void FUNC7(AVCodecContext *avctx,
                                 const uint8_t *buf, int length)
{
    PNGEncContext *s = avctx->priv_data;
    const AVCRC *crc_table = FUNC3(AV_CRC_32_IEEE_LE);
    uint32_t crc = ~0U;

    if (avctx->codec_id == AV_CODEC_ID_PNG || avctx->frame_number == 0) {
        FUNC6(&s->bytestream, FUNC1('I', 'D', 'A', 'T'), buf, length);
        return;
    }

    FUNC4(&s->bytestream, length + 4);

    FUNC4(&s->bytestream, FUNC0('f', 'd', 'A', 'T'));
    FUNC4(&s->bytestream, s->sequence_number);
    crc = FUNC2(crc_table, crc, s->bytestream - 8, 8);

    crc = FUNC2(crc_table, crc, buf, length);
    FUNC5(s->bytestream, buf, length);
    s->bytestream += length;

    FUNC4(&s->bytestream, ~crc);

    ++s->sequence_number;
}
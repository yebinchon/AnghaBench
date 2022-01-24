#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  size_t uint32_t ;
typedef  int /*<<< orphan*/  AVIOContext ;
typedef  int /*<<< orphan*/  AVCRC ;

/* Variables and functions */
 int /*<<< orphan*/  AV_CRC_32_IEEE_LE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*) ; 
 size_t FUNC2 (int /*<<< orphan*/  const*,size_t,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t) ; 

__attribute__((used)) static void FUNC6(AVIOContext *io_context, uint32_t tag,
                             uint8_t *buf, size_t length)
{
    const AVCRC *crc_table = FUNC3(AV_CRC_32_IEEE_LE);
    uint32_t crc = ~0U;
    uint8_t tagbuf[4];

    FUNC1(crc_table);

    FUNC4(io_context, length);
    FUNC0(tagbuf, tag);
    crc = FUNC2(crc_table, crc, tagbuf, 4);
    FUNC4(io_context, tag);
    if (length > 0) {
        crc = FUNC2(crc_table, crc, buf, length);
        FUNC5(io_context, buf, length);
    }
    FUNC4(io_context, ~crc);
}
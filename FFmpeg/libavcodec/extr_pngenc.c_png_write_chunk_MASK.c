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
typedef  int /*<<< orphan*/  const uint8_t ;
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  AVCRC ;

/* Variables and functions */
 int /*<<< orphan*/  AV_CRC_32_IEEE_LE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*,int) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/  const*,int,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  const**,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int) ; 

__attribute__((used)) static void FUNC6(uint8_t **f, uint32_t tag,
                            const uint8_t *buf, int length)
{
    const AVCRC *crc_table = FUNC3(AV_CRC_32_IEEE_LE);
    uint32_t crc = ~0U;
    uint8_t tagbuf[4];

    FUNC4(f, length);
    FUNC0(tagbuf, tag);
    crc = FUNC2(crc_table, crc, tagbuf, 4);
    FUNC4(f, FUNC1(tag));
    if (length > 0) {
        crc = FUNC2(crc_table, crc, buf, length);
        FUNC5(*f, buf, length);
        *f += length;
    }
    FUNC4(f, ~crc);
}
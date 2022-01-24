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
typedef  scalar_t__ uint32_t ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AV_CRC_24_IEEE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/  const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

int FUNC3(const uint8_t *buf, unsigned int buf_size)
{
    uint32_t crc, CRC;

    if (buf_size < 4)
        return AVERROR_INVALIDDATA;
    buf_size -= 3;

    CRC = FUNC0(buf + buf_size);
    crc = FUNC1(FUNC2(AV_CRC_24_IEEE), 0xCE04B7U, buf, buf_size);
    if (CRC != crc)
        return AVERROR_INVALIDDATA;

    return 0;
}
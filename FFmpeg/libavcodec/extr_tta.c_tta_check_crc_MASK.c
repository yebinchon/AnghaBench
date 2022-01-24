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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint32_t ;
struct TYPE_3__ {int /*<<< orphan*/  avctx; int /*<<< orphan*/  crc_table; } ;
typedef  TYPE_1__ TTAContext ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int FUNC0 (int /*<<< orphan*/  const*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC3(TTAContext *s, const uint8_t *buf, int buf_size)
{
    uint32_t crc, CRC;

    CRC = FUNC0(buf + buf_size);
    crc = FUNC1(s->crc_table, 0xFFFFFFFFU, buf, buf_size);
    if (CRC != (crc ^ 0xFFFFFFFFU)) {
        FUNC2(s->avctx, AV_LOG_ERROR, "CRC error\n");
        return AVERROR_INVALIDDATA;
    }

    return 0;
}
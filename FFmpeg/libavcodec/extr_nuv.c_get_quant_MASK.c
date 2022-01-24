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
struct TYPE_3__ {void** cq; void** lq; } ;
typedef  TYPE_1__ NuvContext ;
typedef  int /*<<< orphan*/  AVCodecContext ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 void* FUNC0 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC2(AVCodecContext *avctx, NuvContext *c, const uint8_t *buf,
                     int size)
{
    int i;
    if (size < 2 * 64 * 4) {
        FUNC1(avctx, AV_LOG_ERROR, "insufficient rtjpeg quant data\n");
        return AVERROR_INVALIDDATA;
    }
    for (i = 0; i < 64; i++, buf += 4)
        c->lq[i] = FUNC0(buf);
    for (i = 0; i < 64; i++, buf += 4)
        c->cq[i] = FUNC0(buf);
    return 0;
}
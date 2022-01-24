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
struct TYPE_5__ {scalar_t__ codec_id; TYPE_1__* priv_data; } ;
struct TYPE_4__ {int /*<<< orphan*/  state; } ;
typedef  TYPE_1__ LibGSMDecodeContext ;
typedef  TYPE_2__ AVCodecContext ;

/* Variables and functions */
 scalar_t__ AV_CODEC_ID_GSM_MS ; 
 int /*<<< orphan*/  GSM_OPT_WAV49 ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static void FUNC3(AVCodecContext *avctx) {
    LibGSMDecodeContext *s = avctx->priv_data;
    int one = 1;

    FUNC1(s->state);
    s->state = FUNC0();
    if (avctx->codec_id == AV_CODEC_ID_GSM_MS)
        FUNC2(s->state, GSM_OPT_WAV49, &one);
}
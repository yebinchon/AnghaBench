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
struct TYPE_3__ {int /*<<< orphan*/  bps; int /*<<< orphan*/  channels; int /*<<< orphan*/  samplerate; int /*<<< orphan*/  max_framesize; int /*<<< orphan*/  max_blocksize; } ;
typedef  TYPE_1__ FLACStreaminfo ;
typedef  int /*<<< orphan*/  AVCodecContext ;

/* Variables and functions */
 int /*<<< orphan*/  AV_LOG_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(AVCodecContext *avctx, FLACStreaminfo *s)
{
    FUNC0(avctx, AV_LOG_DEBUG, "  Max Blocksize: %d\n", s->max_blocksize);
    FUNC0(avctx, AV_LOG_DEBUG, "  Max Framesize: %d\n", s->max_framesize);
    FUNC0(avctx, AV_LOG_DEBUG, "  Samplerate: %d\n", s->samplerate);
    FUNC0(avctx, AV_LOG_DEBUG, "  Channels: %d\n", s->channels);
    FUNC0(avctx, AV_LOG_DEBUG, "  Bits: %d\n", s->bps);
}
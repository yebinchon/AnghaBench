#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int channels; int profile; int samplerate_index; scalar_t__ needs_pce; } ;
struct TYPE_5__ {int extradata_size; int /*<<< orphan*/  extradata; TYPE_2__* priv_data; } ;
typedef  int /*<<< orphan*/  PutBitContext ;
typedef  TYPE_1__ AVCodecContext ;
typedef  TYPE_2__ AACEncContext ;

/* Variables and functions */
 int AOT_SBR ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (int const) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int const) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,TYPE_1__*) ; 

__attribute__((used)) static int FUNC7(AVCodecContext *avctx)
{
    PutBitContext pb;
    AACEncContext *s = avctx->priv_data;
    int channels = (!s->needs_pce)*(s->channels - (s->channels == 8 ? 1 : 0));
    const int max_size = 32;

    avctx->extradata = FUNC1(max_size);
    if (!avctx->extradata)
        return FUNC0(ENOMEM);

    FUNC3(&pb, avctx->extradata, max_size);
    FUNC4(&pb, 5, s->profile+1); //profile
    FUNC4(&pb, 4, s->samplerate_index); //sample rate index
    FUNC4(&pb, 4, channels);
    //GASpecificConfig
    FUNC4(&pb, 1, 0); //frame length - 1024 samples
    FUNC4(&pb, 1, 0); //does not depend on core coder
    FUNC4(&pb, 1, 0); //is not extension
    if (s->needs_pce)
        FUNC6(&pb, avctx);

    //Explicitly Mark SBR absent
    FUNC4(&pb, 11, 0x2b7); //sync extension
    FUNC4(&pb, 5,  AOT_SBR);
    FUNC4(&pb, 1,  0);
    FUNC2(&pb);
    avctx->extradata_size = FUNC5(&pb) >> 3;

    return 0;
}
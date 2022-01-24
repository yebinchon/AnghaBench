#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {TYPE_2__* priv_data; } ;
struct TYPE_13__ {TYPE_1__* codecpar; } ;
struct TYPE_12__ {int /*<<< orphan*/  nports; int /*<<< orphan*/  sample_rate; } ;
struct TYPE_11__ {int /*<<< orphan*/  channels; int /*<<< orphan*/  sample_rate; int /*<<< orphan*/  codec_id; int /*<<< orphan*/  codec_type; } ;
typedef  TYPE_2__ JackData ;
typedef  TYPE_3__ AVStream ;
typedef  TYPE_4__ AVFormatContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AVMEDIA_TYPE_AUDIO ; 
 int /*<<< orphan*/  AV_CODEC_ID_PCM_F32BE ; 
 int /*<<< orphan*/  AV_CODEC_ID_PCM_F32LE ; 
 int /*<<< orphan*/  ENOMEM ; 
 TYPE_3__* FUNC1 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int,int,int) ; 
 int FUNC3 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 

__attribute__((used)) static int FUNC5(AVFormatContext *context)
{
    JackData *self = context->priv_data;
    AVStream *stream;
    int test;

    if ((test = FUNC3(context)))
        return test;

    stream = FUNC1(context, NULL);
    if (!stream) {
        FUNC4(self);
        return FUNC0(ENOMEM);
    }

    stream->codecpar->codec_type   = AVMEDIA_TYPE_AUDIO;
#if HAVE_BIGENDIAN
    stream->codecpar->codec_id     = AV_CODEC_ID_PCM_F32BE;
#else
    stream->codecpar->codec_id     = AV_CODEC_ID_PCM_F32LE;
#endif
    stream->codecpar->sample_rate  = self->sample_rate;
    stream->codecpar->channels     = self->nports;

    FUNC2(stream, 64, 1, 1000000);  /* 64 bits pts in us */
    return 0;
}
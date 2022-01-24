#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {int /*<<< orphan*/  nb_samples_pch; int /*<<< orphan*/  nb_ch; int /*<<< orphan*/  format; } ;
typedef  TYPE_1__ TestStruct ;
struct TYPE_16__ {int nb_samples; } ;
typedef  TYPE_2__ AVAudioFifo ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int FUNC4 (TYPE_2__*,void**,int) ; 
 int FUNC5 (TYPE_2__*,void**,int,int) ; 
 int FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,void**) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__ const*,void**,int) ; 
 int /*<<< orphan*/  FUNC9 (char*,...) ; 
 int FUNC10 (TYPE_2__*,void***,int /*<<< orphan*/ ) ; 
 int FUNC11 (TYPE_2__*,TYPE_1__ const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC12(const TestStruct *test_sample)
{
    int ret, i;
    void **output_data  = NULL;
    AVAudioFifo *afifo  = FUNC1(test_sample->format, test_sample->nb_ch,
                                            test_sample->nb_samples_pch);
    if (!afifo) {
        FUNC0("ERROR: av_audio_fifo_alloc returned NULL!");
    }
    ret = FUNC11(afifo, test_sample, test_sample->nb_samples_pch, 0);
    if (ret < 0){
        FUNC0("ERROR: av_audio_fifo_write failed!");
    }
    FUNC9("written: %d\n", ret);

    ret = FUNC11(afifo, test_sample, test_sample->nb_samples_pch, 0);
    if (ret < 0){
        FUNC0("ERROR: av_audio_fifo_write failed!");
    }
    FUNC9("written: %d\n", ret);
    FUNC9("remaining samples in audio_fifo: %d\n\n", FUNC6(afifo));

    ret = FUNC10(afifo, &output_data, test_sample->nb_samples_pch);
    if (ret < 0){
        FUNC0("ERROR: av_audio_fifo_read failed!");
    }
    FUNC9("read: %d\n", ret);
    FUNC8(test_sample, output_data, ret);
    FUNC9("remaining samples in audio_fifo: %d\n\n", FUNC6(afifo));

    /* test av_audio_fifo_peek */
    ret = FUNC4(afifo, output_data, afifo->nb_samples);
    if (ret < 0){
        FUNC0("ERROR: av_audio_fifo_peek failed!");
    }
    FUNC9("peek:\n");
    FUNC8(test_sample, output_data, ret);
    FUNC9("\n");

    /* test av_audio_fifo_peek_at */
    FUNC9("peek_at:\n");
    for (i = 0; i < afifo->nb_samples; ++i){
        ret = FUNC5(afifo, output_data, 1, i);
        if (ret < 0){
            FUNC0("ERROR: av_audio_fifo_peek_at failed!");
        }
        FUNC9("%d:\n", i);
        FUNC8(test_sample, output_data, ret);
    }
    FUNC9("\n");

    /* test av_audio_fifo_drain */
    ret = FUNC2(afifo, afifo->nb_samples);
    if (ret < 0){
        FUNC0("ERROR: av_audio_fifo_drain failed!");
    }
    if (afifo->nb_samples){
        FUNC0("drain failed to flush all samples in audio_fifo!");
    }

    /* deallocate */
    FUNC7(afifo, output_data);
    FUNC3(afifo);
}
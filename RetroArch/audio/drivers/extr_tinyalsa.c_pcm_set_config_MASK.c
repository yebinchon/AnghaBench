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
struct snd_pcm_sw_params {int period_step; int avail_min; int start_threshold; int stop_threshold; int xfer_align; int boundary; scalar_t__ silence_threshold; scalar_t__ silence_size; int /*<<< orphan*/  tstamp_mode; int /*<<< orphan*/  flags; } ;
struct snd_pcm_hw_params {int period_step; int avail_min; int start_threshold; int stop_threshold; int xfer_align; int boundary; scalar_t__ silence_threshold; scalar_t__ silence_size; int /*<<< orphan*/  tstamp_mode; int /*<<< orphan*/  flags; } ;
struct pcm_config {int channels; int rate; int period_size; int period_count; int start_threshold; int stop_threshold; scalar_t__ silence_threshold; int /*<<< orphan*/  format; } ;
struct pcm {int flags; int noirq_frames_per_msec; int buffer_size; scalar_t__ mmap_buffer; int boundary; int /*<<< orphan*/  fd; struct pcm_config config; } ;
typedef  int /*<<< orphan*/  sparams ;

/* Variables and functions */
 int EFAULT ; 
 int EINVAL ; 
 int INT_MAX ; 
 scalar_t__ MAP_FAILED ; 
 int MAP_FILE ; 
 int MAP_SHARED ; 
 int /*<<< orphan*/  PCM_FORMAT_S16_LE ; 
 int PCM_IN ; 
 int PCM_MMAP ; 
 int PCM_NOIRQ ; 
 int PROT_READ ; 
 int PROT_WRITE ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  SNDRV_PCM_ACCESS_MMAP_INTERLEAVED ; 
 int /*<<< orphan*/  SNDRV_PCM_ACCESS_RW_INTERLEAVED ; 
 int /*<<< orphan*/  SNDRV_PCM_HW_PARAMS_NO_PERIOD_WAKEUP ; 
 int /*<<< orphan*/  SNDRV_PCM_HW_PARAM_ACCESS ; 
 int /*<<< orphan*/  SNDRV_PCM_HW_PARAM_CHANNELS ; 
 int /*<<< orphan*/  SNDRV_PCM_HW_PARAM_FORMAT ; 
 int /*<<< orphan*/  SNDRV_PCM_HW_PARAM_FRAME_BITS ; 
 int /*<<< orphan*/  SNDRV_PCM_HW_PARAM_PERIODS ; 
 int /*<<< orphan*/  SNDRV_PCM_HW_PARAM_PERIOD_SIZE ; 
 int /*<<< orphan*/  SNDRV_PCM_HW_PARAM_RATE ; 
 int /*<<< orphan*/  SNDRV_PCM_HW_PARAM_SAMPLE_BITS ; 
 int /*<<< orphan*/  SNDRV_PCM_HW_PARAM_SUBFORMAT ; 
 int /*<<< orphan*/  SNDRV_PCM_IOCTL_HW_PARAMS ; 
 int /*<<< orphan*/  SNDRV_PCM_IOCTL_SW_PARAMS ; 
 int /*<<< orphan*/  SNDRV_PCM_SUBFORMAT_STD ; 
 int /*<<< orphan*/  SNDRV_PCM_TSTAMP_ENABLE ; 
 int errno ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct snd_pcm_sw_params*) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_pcm_sw_params*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC4 (struct snd_pcm_sw_params*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_pcm_sw_params*) ; 
 int /*<<< orphan*/  FUNC6 (struct snd_pcm_sw_params*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct snd_pcm_sw_params*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct snd_pcm_sw_params*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct pcm*,int) ; 

__attribute__((used)) static int FUNC12(struct pcm *pcm, const struct pcm_config *config)
{
    struct snd_pcm_sw_params sparams;
    struct snd_pcm_hw_params params;

    if (pcm == NULL)
        return -EFAULT;

    if (config)
        pcm->config = *config;
    else
    {
        config = &pcm->config;
        pcm->config.channels = 2;
        pcm->config.rate = 48000;
        pcm->config.period_size = 1024;
        pcm->config.period_count = 4;
        pcm->config.format = PCM_FORMAT_S16_LE;
        pcm->config.start_threshold = config->period_count * config->period_size;
        pcm->config.stop_threshold = config->period_count * config->period_size;
        pcm->config.silence_threshold = 0;
    }

    FUNC5(&params);
    FUNC7(&params, SNDRV_PCM_HW_PARAM_FORMAT,
                   FUNC9(config->format));
    FUNC7(&params, SNDRV_PCM_HW_PARAM_SUBFORMAT,
                   SNDRV_PCM_SUBFORMAT_STD);
    FUNC8(&params, SNDRV_PCM_HW_PARAM_PERIOD_SIZE, config->period_size);
    FUNC6(&params, SNDRV_PCM_HW_PARAM_SAMPLE_BITS,
                  FUNC10(config->format));
    FUNC6(&params, SNDRV_PCM_HW_PARAM_FRAME_BITS,
                  FUNC10(config->format) * config->channels);
    FUNC6(&params, SNDRV_PCM_HW_PARAM_CHANNELS,
                  config->channels);
    FUNC6(&params, SNDRV_PCM_HW_PARAM_PERIODS, config->period_count);
    FUNC6(&params, SNDRV_PCM_HW_PARAM_RATE, config->rate);

    if (pcm->flags & PCM_NOIRQ)
    {
        if (!(pcm->flags & PCM_MMAP))
        {
            FUNC0("[TINYALSA]: noirq only currently supported with mmap().");
            return -EINVAL;
        }

        params.flags |= SNDRV_PCM_HW_PARAMS_NO_PERIOD_WAKEUP;
        pcm->noirq_frames_per_msec = config->rate / 1000;
    }

    if (pcm->flags & PCM_MMAP)
        FUNC7(&params, SNDRV_PCM_HW_PARAM_ACCESS,
                   SNDRV_PCM_ACCESS_MMAP_INTERLEAVED);
    else
        FUNC7(&params, SNDRV_PCM_HW_PARAM_ACCESS,
                   SNDRV_PCM_ACCESS_RW_INTERLEAVED);

    if (FUNC1(pcm->fd, SNDRV_PCM_IOCTL_HW_PARAMS, &params))
    {
        FUNC0("[TINYALSA]: cannot set HW params.");
        return -errno;
    }

    /* get our refined hw_params */
    pcm->config.period_size = FUNC4(&params, SNDRV_PCM_HW_PARAM_PERIOD_SIZE);
    pcm->config.period_count = FUNC4(&params, SNDRV_PCM_HW_PARAM_PERIODS);
    pcm->buffer_size = config->period_count * config->period_size;

    if (pcm->flags & PCM_MMAP)
    {
        pcm->mmap_buffer = FUNC3(NULL, FUNC11(pcm, pcm->buffer_size),
                                PROT_READ | PROT_WRITE, MAP_FILE | MAP_SHARED, pcm->fd, 0);
        if (pcm->mmap_buffer == MAP_FAILED)
        {
            FUNC0("[TINYALSA]: failed to mmap buffer %d bytes\n",
                 FUNC11(pcm, pcm->buffer_size));
            return -errno;
        }
    }

    FUNC2(&sparams, 0, sizeof(sparams));
    sparams.tstamp_mode = SNDRV_PCM_TSTAMP_ENABLE;
    sparams.period_step = 1;
    sparams.avail_min   = 1;

    if (!config->start_threshold)
    {
        if (pcm->flags & PCM_IN)
            pcm->config.start_threshold = sparams.start_threshold = 1;
        else
            pcm->config.start_threshold = sparams.start_threshold =
                config->period_count * config->period_size / 2;
    } else
        sparams.start_threshold = config->start_threshold;

    /* pick a high stop threshold - todo: does this need further tuning */
    if (!config->stop_threshold)
    {
        if (pcm->flags & PCM_IN)
            pcm->config.stop_threshold = sparams.stop_threshold =
                config->period_count * config->period_size * 10;
        else
            pcm->config.stop_threshold = sparams.stop_threshold =
                config->period_count * config->period_size;
    }
    else
        sparams.stop_threshold = config->stop_threshold;

    sparams.xfer_align = config->period_size / 2; /* needed for old kernels */
    sparams.silence_size = 0;
    sparams.silence_threshold = config->silence_threshold;
    pcm->boundary = sparams.boundary = pcm->buffer_size;

    while (pcm->boundary * 2 <= INT_MAX - pcm->buffer_size)
        pcm->boundary *= 2;

    if (FUNC1(pcm->fd, SNDRV_PCM_IOCTL_SW_PARAMS, &sparams))
    {
        FUNC0("[TINYALSA]: Cannot set HW params.\n");
        return -errno;
    }

    return 0;
}
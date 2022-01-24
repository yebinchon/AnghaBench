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

/* Variables and functions */
 int FRAC_BITS ; 
 int FRAC_ONE ; 
 int MAX_CHANNELS ; 
 void* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC5 (int) ; 
 int FUNC6 (unsigned int*,int) ; 
 int /*<<< orphan*/  outfile ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int,int,int) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC11 (char*,char*) ; 
 char* FUNC12 (char*,char) ; 

int FUNC13(int argc, char **argv)
{
    int i, a, v, j, f, amp, ampa;
    unsigned int seed = 1;
    int tabf1[MAX_CHANNELS], tabf2[MAX_CHANNELS];
    int taba[MAX_CHANNELS];
    int sample_rate = 44100;
    int nb_channels = 2;
    char *ext;

    if (argc < 2 || argc > 5) {
        FUNC8("usage: %s file [<sample rate> [<channels>] [<random seed>]]\n"
               "generate a test raw 16 bit audio stream\n"
               "If the file extension is .wav a WAVE header will be added.\n"
               "default: 44100 Hz stereo\n", argv[0]);
        FUNC1(1);
    }

    if (argc > 2) {
        sample_rate = FUNC0(argv[2]);
        if (sample_rate <= 0) {
            FUNC4(stderr, "invalid sample rate: %d\n", sample_rate);
            return 1;
        }
    }

    if (argc > 3) {
        nb_channels = FUNC0(argv[3]);
        if (nb_channels < 1 || nb_channels > MAX_CHANNELS) {
            FUNC4(stderr, "invalid number of channels: %d\n", nb_channels);
            return 1;
        }
    }

    if (argc > 4)
        seed = FUNC0(argv[4]);

    outfile = FUNC3(argv[1], "wb");
    if (!outfile) {
        FUNC7(argv[1]);
        return 1;
    }

    if ((ext = FUNC12(argv[1], '.')) && !FUNC11(ext, ".wav"))
        FUNC10(sample_rate, nb_channels, 6 * sample_rate);

    /* 1 second of single freq sine at 1000 Hz */
    a = 0;
    for (i = 0; i < 1 * sample_rate; i++) {
        v = (FUNC5(a) * 10000) >> FRAC_BITS;
        for (j = 0; j < nb_channels; j++)
            FUNC9(v);
        a += (1000 * FRAC_ONE) / sample_rate;
    }

    /* 1 second of varying frequency between 100 and 10000 Hz */
    a = 0;
    for (i = 0; i < 1 * sample_rate; i++) {
        v = (FUNC5(a) * 10000) >> FRAC_BITS;
        for (j = 0; j < nb_channels; j++)
            FUNC9(v);
        f  = 100 + (((10000 - 100) * i) / sample_rate);
        a += (f * FRAC_ONE) / sample_rate;
    }

    /* 0.5 second of low amplitude white noise */
    for (i = 0; i < sample_rate / 2; i++) {
        v = FUNC6(&seed, 20000) - 10000;
        for (j = 0; j < nb_channels; j++)
            FUNC9(v);
    }

    /* 0.5 second of high amplitude white noise */
    for (i = 0; i < sample_rate / 2; i++) {
        v = FUNC6(&seed, 65535) - 32768;
        for (j = 0; j < nb_channels; j++)
            FUNC9(v);
    }

    /* 1 second of unrelated ramps for each channel */
    for (j = 0; j < nb_channels; j++) {
        taba[j]  = 0;
        tabf1[j] = 100 + FUNC6(&seed, 5000);
        tabf2[j] = 100 + FUNC6(&seed, 5000);
    }
    for (i = 0; i < 1 * sample_rate; i++) {
        for (j = 0; j < nb_channels; j++) {
            v = (FUNC5(taba[j]) * 10000) >> FRAC_BITS;
            FUNC9(v);
            f        = tabf1[j] + (((tabf2[j] - tabf1[j]) * i) / sample_rate);
            taba[j] += (f * FRAC_ONE) / sample_rate;
        }
    }

    /* 2 seconds of 500 Hz with varying volume */
    a    = 0;
    ampa = 0;
    for (i = 0; i < 2 * sample_rate; i++) {
        for (j = 0; j < nb_channels; j++) {
            amp = ((FRAC_ONE + FUNC5(ampa)) * 5000) >> FRAC_BITS;
            if (j & 1)
                amp = 10000 - amp;
            v = (FUNC5(a) * amp) >> FRAC_BITS;
            FUNC9(v);
            a    += (500 * FRAC_ONE) / sample_rate;
            ampa += (2 * FRAC_ONE) / sample_rate;
        }
    }

    FUNC2(outfile);
    return 0;
}
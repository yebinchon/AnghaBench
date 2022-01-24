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
typedef  int /*<<< orphan*/  int16_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*) ; 
 int SBC_X_BUFFER_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC2(int position, const uint8_t *pcm,
                                    int16_t X[2][SBC_X_BUFFER_SIZE],
                                    int nsamples, int nchannels)
{
    int c;

    /* handle X buffer wraparound */
    if (position < nsamples) {
        for (c = 0; c < nchannels; c++)
            FUNC1(&X[c][SBC_X_BUFFER_SIZE - 40], &X[c][position],
                            36 * sizeof(int16_t));
        position = SBC_X_BUFFER_SIZE - 40;
    }

    /* copy/permutate audio samples */
    for (; nsamples >= 8; nsamples -= 8, pcm += 16 * nchannels) {
        position -= 8;
        for (c = 0; c < nchannels; c++) {
            int16_t *x = &X[c][position];
            x[0] = FUNC0(pcm + 14*nchannels + 2*c);
            x[1] = FUNC0(pcm +  6*nchannels + 2*c);
            x[2] = FUNC0(pcm + 12*nchannels + 2*c);
            x[3] = FUNC0(pcm +  8*nchannels + 2*c);
            x[4] = FUNC0(pcm +  0*nchannels + 2*c);
            x[5] = FUNC0(pcm +  4*nchannels + 2*c);
            x[6] = FUNC0(pcm +  2*nchannels + 2*c);
            x[7] = FUNC0(pcm + 10*nchannels + 2*c);
        }
    }

    return position;
}
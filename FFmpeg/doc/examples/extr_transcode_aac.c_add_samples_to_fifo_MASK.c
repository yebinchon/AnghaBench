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
typedef  int /*<<< orphan*/  AVAudioFifo ;

/* Variables and functions */
 int AVERROR_EXIT ; 
 int FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int const FUNC2 (int /*<<< orphan*/ *,void**,int const) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static int FUNC4(AVAudioFifo *fifo,
                               uint8_t **converted_input_samples,
                               const int frame_size)
{
    int error;

    /* Make the FIFO as large as it needs to be to hold both,
     * the old and the new samples. */
    if ((error = FUNC0(fifo, FUNC1(fifo) + frame_size)) < 0) {
        FUNC3(stderr, "Could not reallocate FIFO\n");
        return error;
    }

    /* Store the new samples in the FIFO buffer. */
    if (FUNC2(fifo, (void **)converted_input_samples,
                            frame_size) < frame_size) {
        FUNC3(stderr, "Could not write data to FIFO\n");
        return AVERROR_EXIT;
    }
    return 0;
}
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
typedef  unsigned int uint8_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  EAGAIN ; 
 int /*<<< orphan*/  FUNC1 (void*,int /*<<< orphan*/ ,char*,int,int) ; 

__attribute__((used)) static inline int FUNC2(int nal_length_size, const uint8_t *buf,
                              int buf_size, int *buf_index, void *logctx)
{
    int i, nalsize = 0;

    if (*buf_index >= buf_size - nal_length_size) {
        // the end of the buffer is reached, refill it
        return FUNC0(EAGAIN);
    }

    for (i = 0; i < nal_length_size; i++)
        nalsize = ((unsigned)nalsize << 8) | buf[(*buf_index)++];
    if (nalsize <= 0 || nalsize > buf_size - *buf_index) {
        FUNC1(logctx, AV_LOG_ERROR,
               "Invalid NAL unit size (%d > %d).\n", nalsize, buf_size - *buf_index);
        return AVERROR_INVALIDDATA;
    }
    return nalsize;
}
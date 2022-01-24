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
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_UNKNOWN ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOMEM ; 
#define  VP8_ENC_ERROR_BAD_DIMENSION 132 
#define  VP8_ENC_ERROR_BITSTREAM_OUT_OF_MEMORY 131 
#define  VP8_ENC_ERROR_INVALID_CONFIGURATION 130 
#define  VP8_ENC_ERROR_NULL_PARAMETER 129 
#define  VP8_ENC_ERROR_OUT_OF_MEMORY 128 

int FUNC1(int err)
{
    switch (err) {
    case VP8_ENC_ERROR_OUT_OF_MEMORY:
    case VP8_ENC_ERROR_BITSTREAM_OUT_OF_MEMORY:
        return FUNC0(ENOMEM);
    case VP8_ENC_ERROR_NULL_PARAMETER:
    case VP8_ENC_ERROR_INVALID_CONFIGURATION:
    case VP8_ENC_ERROR_BAD_DIMENSION:
        return FUNC0(EINVAL);
    }
    return AVERROR_UNKNOWN;
}
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
typedef  int /*<<< orphan*/  SwrContext ;

/* Variables and functions */
 char* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  stderr ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int const,int /*<<< orphan*/  const**,int const) ; 

__attribute__((used)) static int FUNC3(const uint8_t **input_data,
                           uint8_t **converted_data, const int frame_size,
                           SwrContext *resample_context)
{
    int error;

    /* Convert the samples using the resampler. */
    if ((error = FUNC2(resample_context,
                             converted_data, frame_size,
                             input_data    , frame_size)) < 0) {
        FUNC1(stderr, "Could not convert input samples (error '%s')\n",
                FUNC0(error));
        return error;
    }

    return 0;
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int* linesize; int /*<<< orphan*/  channel_layout; int /*<<< orphan*/  format; } ;
typedef  TYPE_1__ AVFrame ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int FUNC3(AVFrame *out)
{
    int bytes_per_sample = FUNC0(out->format);
    int samples = out->linesize[0] / bytes_per_sample;

    if (FUNC2(out->format)) {
        return samples;
    } else {
        int channels = FUNC1(out->channel_layout);
        return samples / channels;
    }
}
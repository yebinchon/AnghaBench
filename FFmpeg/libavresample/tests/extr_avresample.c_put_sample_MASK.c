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
typedef  enum AVSampleFormat { ____Placeholder_AVSampleFormat } AVSampleFormat ;

/* Variables and functions */
#define  AV_SAMPLE_FMT_DBL 132 
#define  AV_SAMPLE_FMT_FLT 131 
#define  AV_SAMPLE_FMT_S16 130 
#define  AV_SAMPLE_FMT_S32 129 
#define  AV_SAMPLE_FMT_U8 128 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (void**,int,int,int,int,double) ; 
 int /*<<< orphan*/  FUNC2 (void**,int,int,int,int,double) ; 
 int /*<<< orphan*/  FUNC3 (void**,int,int,int,int,double) ; 
 int /*<<< orphan*/  FUNC4 (void**,int,int,int,int,double) ; 
 int /*<<< orphan*/  FUNC5 (void**,int,int,int,int,double) ; 

__attribute__((used)) static void FUNC6(void **data, enum AVSampleFormat sample_fmt,
                       int channels, int sample, int ch, double v_dbl)
{
    switch (FUNC0(sample_fmt)) {
    case AV_SAMPLE_FMT_U8:
        FUNC5(data, sample_fmt, channels, sample, ch, v_dbl);
        break;
    case AV_SAMPLE_FMT_S16:
        FUNC3(data, sample_fmt, channels, sample, ch, v_dbl);
        break;
    case AV_SAMPLE_FMT_S32:
        FUNC4(data, sample_fmt, channels, sample, ch, v_dbl);
        break;
    case AV_SAMPLE_FMT_FLT:
        FUNC2(data, sample_fmt, channels, sample, ch, v_dbl);
        break;
    case AV_SAMPLE_FMT_DBL:
        FUNC1(data, sample_fmt, channels, sample, ch, v_dbl);
        break;
    }
}
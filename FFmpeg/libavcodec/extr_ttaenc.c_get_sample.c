
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int int32_t ;
typedef int int16_t ;
typedef enum AVSampleFormat { ____Placeholder_AVSampleFormat } AVSampleFormat ;
struct TYPE_3__ {int** data; } ;
typedef TYPE_1__ AVFrame ;


 int AV_SAMPLE_FMT_S16 ;
 int AV_SAMPLE_FMT_U8 ;

__attribute__((used)) static int32_t get_sample(const AVFrame *frame, int sample,
                          enum AVSampleFormat format)
{
    int32_t ret;

    if (format == AV_SAMPLE_FMT_U8) {
        ret = frame->data[0][sample] - 0x80;
    } else if (format == AV_SAMPLE_FMT_S16) {
        const int16_t *ptr = (const int16_t *)frame->data[0];
        ret = ptr[sample];
    } else {
        const int32_t *ptr = (const int32_t *)frame->data[0];
        ret = ptr[sample] >> 8;
    }

    return ret;
}

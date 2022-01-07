
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {int nb_ch; int format; } ;
typedef TYPE_1__ TestStruct ;


 int HAVE_BIGENDIAN ;
 int av_get_bytes_per_sample (int ) ;
 scalar_t__ av_sample_fmt_is_planar (int ) ;
 int printf (char*,int) ;
 int putchar (char) ;

__attribute__((used)) static void print_audio_bytes(const TestStruct *test_sample, void **data_planes, int nb_samples)
{
    int p, b, f;
    int byte_offset = av_get_bytes_per_sample(test_sample->format);
    int buffers = av_sample_fmt_is_planar(test_sample->format)
                                         ? test_sample->nb_ch : 1;
    int line_size = (buffers > 1) ? nb_samples * byte_offset
                                         : nb_samples * byte_offset * test_sample->nb_ch;
    for (p = 0; p < buffers; ++p){
        for(b = 0; b < line_size; b+=byte_offset){
            for (f = 0; f < byte_offset; f++){
                int order = !HAVE_BIGENDIAN ? (byte_offset - f - 1) : f;
                printf("%02x", *((uint8_t*)data_planes[p] + b + order));
            }
            putchar(' ');
        }
        putchar('\n');
    }
}

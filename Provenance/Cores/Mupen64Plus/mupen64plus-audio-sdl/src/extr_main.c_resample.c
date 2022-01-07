
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int spx_uint32_t ;
typedef int spx_int16_t ;
struct TYPE_3__ {unsigned char* data_in; int input_frames; float src_ratio; unsigned char* data_out; int output_frames; int input_frames_used; scalar_t__ end_of_input; } ;


 scalar_t__ RESAMPLER_SPEEX ;
 scalar_t__ RESAMPLER_SRC ;
 scalar_t__ Resample ;
 int ResampleQuality ;
 unsigned char* _dest ;
 int _dest_len ;
 unsigned char* _src ;
 int _src_len ;
 int error ;
 int free (unsigned char*) ;
 unsigned char* malloc (int) ;
 int memset (unsigned char*,int ,int) ;
 int * speex_resampler_init (int,int,int,int ,int *) ;
 int speex_resampler_process_interleaved_int (int *,int const*,int*,int *,int*) ;
 int speex_resampler_set_rate (int *,int,int) ;
 int * spx_state ;
 TYPE_1__ src_data ;
 int src_float_to_short_array (unsigned char*,short*,int) ;
 int * src_new (int ,int,int *) ;
 int src_process (int *,TYPE_1__*) ;
 int src_short_to_float_array (short*,unsigned char*,int) ;
 int * src_state ;

__attribute__((used)) static int resample(unsigned char *input, int input_avail, int oldsamplerate, unsigned char *output, int output_needed, int newsamplerate)
{
    int *psrc = (int*)input;
    int *pdest = (int*)output;
    int i = 0, j = 0;
    if (newsamplerate >= oldsamplerate)
    {
        int sldf = oldsamplerate;
        int const2 = 2*sldf;
        int dldf = newsamplerate;
        int const1 = const2 - 2*dldf;
        int criteria = const2 - dldf;
        for (i = 0; i < output_needed/4; i++)
        {
            pdest[i] = psrc[j];
            if(criteria >= 0)
            {
                ++j;
                criteria += const1;
            }
            else criteria += const2;
        }
        return j * 4;
    }

    for (i = 0; i < output_needed/4; i++)
    {
        j = i * oldsamplerate / newsamplerate;
        pdest[i] = psrc[j];
    }
    return j * 4;
}

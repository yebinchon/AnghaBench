
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct resampler_data {float const* data_in; float* data_out; size_t input_frames; float ratio; scalar_t__ output_frames; } ;
struct TYPE_3__ {int (* free ) (void*) ;int (* process ) (void*,struct resampler_data*) ;} ;
typedef TYPE_1__ retro_resampler_t ;


 int RESAMPLER_QUALITY_DONTCARE ;
 scalar_t__ memalign_alloc (int,size_t) ;
 int retro_resampler_realloc (void**,TYPE_1__ const**,int *,int ,float) ;
 scalar_t__ s_rate ;
 int stub1 (void*,struct resampler_data*) ;
 int stub2 (void*) ;

__attribute__((used)) static bool one_shot_resample(const float* in, size_t samples_in,
      unsigned rate, float** out, size_t* samples_out)
{
   struct resampler_data info;
   void* data = ((void*)0);
   const retro_resampler_t* resampler = ((void*)0);
   float ratio = (double)s_rate / (double)rate;

   if (!retro_resampler_realloc(&data, &resampler, ((void*)0),
            RESAMPLER_QUALITY_DONTCARE, ratio))
      return 0;
   *samples_out = samples_in * ratio + 4;
   *out = (float*)memalign_alloc(16,
         ((*samples_out + 15) & ~15) * sizeof(float));

   if (*out == ((void*)0))
      return 0;

   info.data_in = in;
   info.data_out = *out;
   info.input_frames = samples_in / 2;
   info.output_frames = 0;
   info.ratio = ratio;

   resampler->process(data, &info);
   resampler->free(data);
   return 1;
}

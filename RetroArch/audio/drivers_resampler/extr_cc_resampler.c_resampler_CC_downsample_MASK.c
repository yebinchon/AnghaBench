#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct resampler_data {int input_frames; double ratio; int output_frames; scalar_t__ data_out; scalar_t__ data_in; } ;
struct TYPE_2__ {double distance; int /*<<< orphan*/ * buffer; } ;
typedef  TYPE_1__ rarch_CC_resampler_t ;
typedef  int /*<<< orphan*/  audio_frame_float_t ;
typedef  int /*<<< orphan*/  __m64 ;
typedef  int /*<<< orphan*/  __m128 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (float*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (double,double,double,double) ; 
 int /*<<< orphan*/  FUNC8 (double) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (float*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC14(void *re_, struct resampler_data *data)
{
   rarch_CC_resampler_t *re     = (rarch_CC_resampler_t*)re_;

   audio_frame_float_t *inp     = (audio_frame_float_t*)data->data_in;
   audio_frame_float_t *inp_max = (audio_frame_float_t*)(inp + data->input_frames);
   audio_frame_float_t *outp    = (audio_frame_float_t*)data->data_out;
   float ratio                  = 1.0 / data->ratio;
   float b                      = data->ratio; /* cutoff frequency. */

   __m128 vec_previous          = FUNC3((float*)&re->buffer[0]);
   __m128 vec_current           = FUNC3((float*)&re->buffer[2]);

   while (inp != inp_max)
   {
      __m128 vec_ww1, vec_ww2;
      __m128 vec_w_previous;
      __m128 vec_w_current;
      __m128 vec_in;
      __m128 vec_ratio =
         FUNC6(FUNC8(ratio), FUNC7(3.0, 2.0, 1.0, 0.0));
      __m128 vec_w     = FUNC13(FUNC8(re->distance), vec_ratio);

      __m128 vec_w1    = FUNC1(vec_w , FUNC8(0.5));
      __m128 vec_w2    = FUNC13(vec_w , FUNC8(0.5));

      __m128 vec_b     = FUNC8(b);

      vec_w1           = FUNC6(vec_w1, vec_b);
      vec_w2           = FUNC6(vec_w2, vec_b);

      (void)vec_ww1;
      (void)vec_ww2;

#if (CC_RESAMPLER_PRECISION > 0)
      vec_ww1 = _mm_mul_ps(vec_w1, vec_w1);
      vec_ww2 = _mm_mul_ps(vec_w2, vec_w2);

      vec_ww1 = _mm_mul_ps(vec_ww1, _mm_sub_ps(_mm_set_ps1(3.0),vec_ww1));
      vec_ww2 = _mm_mul_ps(vec_ww2, _mm_sub_ps(_mm_set_ps1(3.0),vec_ww2));

      vec_ww1 = _mm_mul_ps(_mm_set_ps1(1.0/4.0), vec_ww1);
      vec_ww2 = _mm_mul_ps(_mm_set_ps1(1.0/4.0), vec_ww2);

      vec_w1  = _mm_mul_ps(vec_w1, _mm_sub_ps(_mm_set_ps1(1.0), vec_ww1));
      vec_w2  = _mm_mul_ps(vec_w2, _mm_sub_ps(_mm_set_ps1(1.0), vec_ww2));
#endif

      vec_w1  = FUNC5(vec_w1, FUNC8( 0.5));
      vec_w2  = FUNC5(vec_w2, FUNC8( 0.5));
      vec_w1  = FUNC4(vec_w1, FUNC8(-0.5));
      vec_w2  = FUNC4(vec_w2, FUNC8(-0.5));
      vec_w   = FUNC13(vec_w1, vec_w2);

      vec_w_previous =
         FUNC10(vec_w,vec_w,FUNC0(1, 1, 0, 0));
      vec_w_current  =
         FUNC10(vec_w,vec_w,FUNC0(3, 3, 2, 2));

      vec_in = FUNC2(FUNC9(),(__m64*)inp);
      vec_in = FUNC10(vec_in,vec_in,FUNC0(1, 0, 1, 0));

      vec_previous =
         FUNC1(vec_previous, FUNC6(vec_in, vec_w_previous));
      vec_current  =
         FUNC1(vec_current, FUNC6(vec_in, vec_w_current));

      re->distance++;
      inp++;

      if (re->distance > (ratio + 0.5))
      {
         FUNC11((__m64*)outp, vec_previous);
         vec_previous =
            FUNC10(vec_previous,vec_current,FUNC0(1, 0, 3, 2));
         vec_current  =
            FUNC10(vec_current,FUNC9(),FUNC0(1, 0, 3, 2));

         re->distance -= ratio;
         outp++;
      }
   }

   FUNC12((float*)&re->buffer[0], vec_previous);
   FUNC12((float*)&re->buffer[2],  vec_current);

   data->output_frames = outp - (audio_frame_float_t*)data->data_out;
}
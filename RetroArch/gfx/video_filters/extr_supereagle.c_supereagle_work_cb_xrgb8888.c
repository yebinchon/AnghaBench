
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct softfilter_thread_data {unsigned int width; unsigned int height; int in_pitch; int out_pitch; int last; int first; scalar_t__ out_data; scalar_t__ in_data; } ;


 int SOFTFILTER_BPP_XRGB8888 ;
 int supereagle_generic_xrgb8888 (unsigned int,unsigned int,int ,int ,int *,unsigned int,int *,unsigned int) ;

__attribute__((used)) static void supereagle_work_cb_xrgb8888(void *data, void *thread_data)
{
   struct softfilter_thread_data *thr = (struct softfilter_thread_data*)thread_data;
   uint32_t *input = (uint32_t*)thr->in_data;
   uint32_t *output = (uint32_t*)thr->out_data;
   unsigned width = thr->width;
   unsigned height = thr->height;

   supereagle_generic_xrgb8888(width, height,
         thr->first, thr->last, input,
        (unsigned)(thr->in_pitch / SOFTFILTER_BPP_XRGB8888),
        output,
        (unsigned)(thr->out_pitch / SOFTFILTER_BPP_XRGB8888));
}

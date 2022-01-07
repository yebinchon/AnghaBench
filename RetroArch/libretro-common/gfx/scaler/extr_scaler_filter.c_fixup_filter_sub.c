
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scaler_filter {int filter_len; int* filter_pos; int filter_stride; int * filter; } ;
typedef int int16_t ;


 int memmove (int *,int *,int) ;
 int memset (int *,int ,int) ;

__attribute__((used)) static void fixup_filter_sub(struct scaler_filter *filter,
      int out_len, int in_len)
{
   int i;
   int max_pos = in_len - filter->filter_len;

   for (i = 0; i < out_len; i++)
   {
      int postsample = filter->filter_pos[i] - max_pos;
      int presample = -filter->filter_pos[i];

      if (postsample > 0)
      {
         int16_t *base_filter = ((void*)0);

         filter->filter_pos[i] -= postsample;

         base_filter = filter->filter + i * filter->filter_stride;

         if (postsample > (int)filter->filter_len)
            memset(base_filter, 0, filter->filter_len * sizeof(int16_t));
         else
         {
            memmove(base_filter + postsample, base_filter,
                  (filter->filter_len - postsample) * sizeof(int16_t));
            memset(base_filter, 0, postsample * sizeof(int16_t));
         }
      }

      if (presample > 0)
      {
         int16_t *base_filter = ((void*)0);

         filter->filter_pos[i] += presample;
         base_filter = filter->filter + i * filter->filter_stride;

         if (presample > (int)filter->filter_len)
            memset(base_filter, 0, filter->filter_len * sizeof(int16_t));
         else
         {
            memmove(base_filter, base_filter + presample,
                  (filter->filter_len - presample) * sizeof(int16_t));
            memset(base_filter + (filter->filter_len - presample),
                  0, presample * sizeof(int16_t));
         }
      }
   }
}

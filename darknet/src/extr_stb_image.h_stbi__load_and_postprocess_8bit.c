
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int stbi_uc ;
typedef int stbi__uint16 ;
struct TYPE_3__ {int bits_per_channel; } ;
typedef TYPE_1__ stbi__result_info ;
typedef int stbi__context ;


 int STBI_ASSERT (int) ;
 void* stbi__convert_16_to_8 (int *,int,int,int) ;
 void* stbi__load_main (int *,int*,int*,int*,int,TYPE_1__*,int) ;
 int stbi__vertical_flip (void*,int,int,int) ;
 scalar_t__ stbi__vertically_flip_on_load ;

__attribute__((used)) static unsigned char *stbi__load_and_postprocess_8bit(stbi__context *s, int *x, int *y, int *comp, int req_comp)
{
   stbi__result_info ri;
   void *result = stbi__load_main(s, x, y, comp, req_comp, &ri, 8);

   if (result == ((void*)0))
      return ((void*)0);

   if (ri.bits_per_channel != 8) {
      STBI_ASSERT(ri.bits_per_channel == 16);
      result = stbi__convert_16_to_8((stbi__uint16 *) result, *x, *y, req_comp == 0 ? *comp : req_comp);
      ri.bits_per_channel = 8;
   }



   if (stbi__vertically_flip_on_load) {
      int channels = req_comp ? req_comp : *comp;
      stbi__vertical_flip(result, *x, *y, channels * sizeof(stbi_uc));
   }

   return (unsigned char *) result;
}

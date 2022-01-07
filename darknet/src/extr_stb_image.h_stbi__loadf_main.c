
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int stbi__result_info ;
typedef int stbi__context ;


 float* stbi__errpf (char*,char*) ;
 int stbi__float_postprocess (float*,int*,int*,int*,int) ;
 float* stbi__hdr_load (int *,int*,int*,int*,int,int *) ;
 scalar_t__ stbi__hdr_test (int *) ;
 float* stbi__ldr_to_hdr (unsigned char*,int,int,int) ;
 unsigned char* stbi__load_and_postprocess_8bit (int *,int*,int*,int*,int) ;

__attribute__((used)) static float *stbi__loadf_main(stbi__context *s, int *x, int *y, int *comp, int req_comp)
{
   unsigned char *data;

   if (stbi__hdr_test(s)) {
      stbi__result_info ri;
      float *hdr_data = stbi__hdr_load(s,x,y,comp,req_comp, &ri);
      if (hdr_data)
         stbi__float_postprocess(hdr_data,x,y,comp,req_comp);
      return hdr_data;
   }

   data = stbi__load_and_postprocess_8bit(s, x, y, comp, req_comp);
   if (data)
      return stbi__ldr_to_hdr(data, *x, *y, req_comp ? req_comp : *comp);
   return stbi__errpf("unknown image type", "Image not of any known type, or corrupt");
}

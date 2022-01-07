
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int stbi__context ;


 scalar_t__ stbi__png_is16 (int *) ;
 scalar_t__ stbi__psd_is16 (int *) ;

__attribute__((used)) static int stbi__is_16_main(stbi__context *s)
{

   if (stbi__png_is16(s)) return 1;



   if (stbi__psd_is16(s)) return 1;


   return 0;
}

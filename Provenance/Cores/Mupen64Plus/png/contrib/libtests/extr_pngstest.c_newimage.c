
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Image ;


 int memset (int *,int ,int) ;

__attribute__((used)) static void
newimage(Image *image)
{
   memset(image, 0, sizeof *image);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int depth; int * s; } ;
typedef TYPE_1__ stbi__png ;
typedef int stbi__context ;


 int stbi__png_info_raw (TYPE_1__*,int *,int *,int *) ;
 int stbi__rewind (int *) ;

__attribute__((used)) static int stbi__png_is16(stbi__context *s)
{
   stbi__png p;
   p.s = s;
   if (!stbi__png_info_raw(&p, ((void*)0), ((void*)0), ((void*)0)))
    return 0;
   if (p.depth != 16) {
      stbi__rewind(p.s);
      return 0;
   }
   return 1;
}

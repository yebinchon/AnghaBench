
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int stbi__result_info ;
struct TYPE_3__ {int * s; } ;
typedef TYPE_1__ stbi__png ;
typedef int stbi__context ;


 void* stbi__do_png (TYPE_1__*,int*,int*,int*,int,int *) ;

__attribute__((used)) static void *stbi__png_load(stbi__context *s, int *x, int *y, int *comp, int req_comp, stbi__result_info *ri)
{
   stbi__png p;
   p.s = s;
   return stbi__do_png(&p, x,y,comp,req_comp, ri);
}

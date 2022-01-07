
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * s; } ;
typedef TYPE_1__ stbi__jpeg ;
typedef int stbi__context ;


 int STBI_FREE (TYPE_1__*) ;
 int stbi__jpeg_info_raw (TYPE_1__*,int*,int*,int*) ;
 scalar_t__ stbi__malloc (int) ;

__attribute__((used)) static int stbi__jpeg_info(stbi__context *s, int *x, int *y, int *comp)
{
   int result;
   stbi__jpeg* j = (stbi__jpeg*) (stbi__malloc(sizeof(stbi__jpeg)));
   j->s = s;
   result = stbi__jpeg_info_raw(j, x, y, comp);
   STBI_FREE(j);
   return result;
}

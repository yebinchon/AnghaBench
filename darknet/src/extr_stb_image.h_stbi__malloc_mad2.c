
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int stbi__mad2sizes_valid (int,int,int) ;
 void* stbi__malloc (int) ;

__attribute__((used)) static void *stbi__malloc_mad2(int a, int b, int add)
{
   if (!stbi__mad2sizes_valid(a, b, add)) return ((void*)0);
   return stbi__malloc(a*b + add);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int stbi__mad4sizes_valid (int,int,int,int,int) ;
 void* stbi__malloc (int) ;

__attribute__((used)) static void *stbi__malloc_mad4(int a, int b, int c, int d, int add)
{
   if (!stbi__mad4sizes_valid(a, b, c, d, add)) return ((void*)0);
   return stbi__malloc(a*b*c*d + add);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int stbi__context ;


 char stbi__get8 (int *) ;

__attribute__((used)) static int stbi__gif_test_raw(stbi__context *s)
{
   int sz;
   if (stbi__get8(s) != 'G' || stbi__get8(s) != 'I' || stbi__get8(s) != 'F' || stbi__get8(s) != '8') return 0;
   sz = stbi__get8(s);
   if (sz != '9' && sz != '7') return 0;
   if (stbi__get8(s) != 'a') return 0;
   return 1;
}

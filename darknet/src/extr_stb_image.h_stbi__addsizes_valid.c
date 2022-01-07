
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int INT_MAX ;

__attribute__((used)) static int stbi__addsizes_valid(int a, int b)
{
   if (b < 0) return 0;




   return a <= INT_MAX - b;
}

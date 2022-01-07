
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int code_bits; unsigned int code_buffer; } ;
typedef TYPE_1__ stbi__jpeg ;


 unsigned int* stbi__bmask ;
 int stbi__grow_buffer_unsafe (TYPE_1__*) ;
 unsigned int stbi_lrot (unsigned int,int) ;

__attribute__((used)) static int stbi__jpeg_get_bits(stbi__jpeg *j, int n)
{
   unsigned int k;
   if (j->code_bits < n) stbi__grow_buffer_unsafe(j);
   k = stbi_lrot(j->code_buffer, n);
   j->code_buffer = k & ~stbi__bmask[n];
   k &= stbi__bmask[n];
   j->code_bits -= n;
   return k;
}

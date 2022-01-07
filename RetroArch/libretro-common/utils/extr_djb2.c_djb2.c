
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;



__attribute__((used)) static uint32_t djb2(const char* str)
{
   const unsigned char* aux = (const unsigned char*)str;
   uint32_t hash = 5381;

   while (*aux)
      hash = (hash << 5) + hash + *aux++;

   return hash;
}

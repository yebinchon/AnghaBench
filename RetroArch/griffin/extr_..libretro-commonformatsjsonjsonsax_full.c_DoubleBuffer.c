
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int byte ;
struct TYPE_3__ {int userData; scalar_t__ (* realloc ) (int ,int *,size_t) ;} ;
typedef TYPE_1__ JSON_MemorySuite ;


 int memcpy (int *,int *,size_t) ;
 scalar_t__ stub1 (int ,int *,size_t) ;
 scalar_t__ stub2 (int ,int *,size_t) ;

__attribute__((used)) static byte* DoubleBuffer(const JSON_MemorySuite* pMemorySuite, byte* pDefaultBuffer, byte* pBuffer, size_t length)
{
   size_t newLength = length * 2;
   if (newLength < length)
   {
      pBuffer = ((void*)0);
   }
   else if (pBuffer == pDefaultBuffer)
   {
      pBuffer = (byte*)pMemorySuite->realloc(pMemorySuite->userData, ((void*)0), newLength);
      if (pBuffer)
      {
         memcpy(pBuffer, pDefaultBuffer, length);
      }
   }
   else
   {
      pBuffer = (byte*)pMemorySuite->realloc(pMemorySuite->userData, pBuffer, newLength);
   }
   return pBuffer;
}

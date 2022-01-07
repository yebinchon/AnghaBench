
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef int int8_t ;


 scalar_t__ abs (int ) ;

__attribute__((used)) static unsigned count_sad(const uint8_t *data, size_t size)
{
   size_t i;
   unsigned cnt = 0;
   for (i = 0; i < size; i++)
   {
      if (data[i])
         cnt += abs((int8_t)data[i]);
   }
   return cnt;
}

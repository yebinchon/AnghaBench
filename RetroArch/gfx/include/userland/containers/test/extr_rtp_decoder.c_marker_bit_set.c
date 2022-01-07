
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int const HAS_MARKER ;

__attribute__((used)) static bool marker_bit_set(const uint8_t *buffer, size_t buffer_len)
{
   if (buffer_len < 2)
      return 0;

   return (buffer[1] & HAS_MARKER);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bool_gen {int dummy; } ;


 int random_bool_gen_entropy (struct bool_gen*,unsigned int*,unsigned int) ;

unsigned int
random_bool_gen_bits(struct bool_gen * bg, unsigned int * buffer, unsigned int count, unsigned int numbits)
{
 unsigned int index = 0;
 unsigned int rbits = 0;
 for (unsigned int bitct = 0; bitct < numbits; bitct++) {




  while (index < count && buffer[index] == 0)
   index++;


  if (index == count) {
   random_bool_gen_entropy(bg, buffer, count);
   index = 0;
  }


  unsigned int bit = buffer[index] & 1;
  buffer[index] = buffer[index] >> 1;
  rbits = bit | (rbits << 1);
 }
 return rbits;
}

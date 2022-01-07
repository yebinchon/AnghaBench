
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int* saw_table; int* square_table; int* tri_table; int* noise_table; } ;


 TYPE_1__ alfo ;
 int rand () ;

void fill_alfo_tables()
{
   int i;


   for (i = 0; i < 256; i++)
   {
      alfo.saw_table[i] = i;
   }


   for (i = 0; i < 256; i++)
   {
      if (i < 128)
         alfo.square_table[i] = 0;
      else
         alfo.square_table[i] = 0xff;
   }


   for (i = 0; i < 256; i++)
   {
      if (i < 128)
         alfo.tri_table[i] = i * 2;
      else
         alfo.tri_table[i] = 255 - (i * 2);
   }


   for (i = 0; i < 256; i++)
   {
      alfo.noise_table[i] = rand() & 0xff;
   }
}

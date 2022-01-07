
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int png_byte ;
struct TYPE_2__ {int name; } ;


 int NINFO ;
 TYPE_1__* chunk_info ;
 scalar_t__ memcmp (int ,int const*,int) ;

__attribute__((used)) static int
findb(const png_byte *name)
{
   int i = NINFO;
   while (--i >= 0)
   {
      if (memcmp(chunk_info[i].name, name, 4) == 0)
         break;
   }

   return i;
}

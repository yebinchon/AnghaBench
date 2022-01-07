
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ keep; } ;


 int NINFO ;
 TYPE_1__* chunk_info ;

__attribute__((used)) static void
clear_keep(void)
{
   int i = NINFO;
   while (--i >= 0)
      chunk_info[i].keep = 0;
}

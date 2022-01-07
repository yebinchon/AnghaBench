
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ key; } ;
struct TYPE_4__ {TYPE_2__* slot; } ;


 int ScspKeyOff (TYPE_2__*) ;
 int ScspKeyOn (TYPE_2__*) ;
 TYPE_1__ scsp ;

__attribute__((used)) static void ScspDoKeyOnOff(void)
{
   int slotnum;
   for (slotnum = 0; slotnum < 32; slotnum++)
   {
      if (scsp.slot[slotnum].key)
         ScspKeyOn(&scsp.slot[slotnum]);
      else
         ScspKeyOff(&scsp.slot[slotnum]);
   }
}

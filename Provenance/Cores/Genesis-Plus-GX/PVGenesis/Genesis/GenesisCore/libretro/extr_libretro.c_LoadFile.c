
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ ram; } ;
struct TYPE_7__ {scalar_t__ status; } ;
struct TYPE_5__ {int boot; } ;
struct TYPE_6__ {TYPE_1__ cartridge; } ;


 scalar_t__ CD_OPEN ;
 scalar_t__ NO_DISC ;
 scalar_t__ SYSTEM_MCD ;
 TYPE_4__ cdc ;
 TYPE_3__ cdd ;
 int cdd_load (char*,char*) ;
 int getrominfo (char*) ;
 int load_rom (char*) ;
 TYPE_2__ scd ;
 scalar_t__ system_hw ;

__attribute__((used)) static bool LoadFile(char * filename)
{
   int size = 0;


   if ((system_hw == SYSTEM_MCD) && (cdd.status == CD_OPEN))
   {

      size = cdd_load(filename, (char *)(cdc.ram));


      if (!scd.cartridge.boot)
         getrominfo((char *)(cdc.ram));
   }


   if (!size)
   {

      cdd.status = NO_DISC;


      size = load_rom(filename);
   }

   return size > 0;
}

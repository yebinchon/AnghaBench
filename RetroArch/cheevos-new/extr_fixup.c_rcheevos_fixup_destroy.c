
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int elements; } ;
typedef TYPE_1__ rcheevos_fixups_t ;


 int CHEEVOS_FREE (int ) ;
 int rcheevos_fixup_init (TYPE_1__*) ;

void rcheevos_fixup_destroy(rcheevos_fixups_t* fixups)
{
   CHEEVOS_FREE(fixups->elements);
   rcheevos_fixup_init(fixups);
}

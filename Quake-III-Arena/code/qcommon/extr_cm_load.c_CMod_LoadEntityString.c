
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int filelen; scalar_t__ fileofs; } ;
typedef TYPE_1__ lump_t ;
struct TYPE_5__ {int entityString; int numEntityChars; } ;


 int Com_Memcpy (int ,scalar_t__,int ) ;
 int Hunk_Alloc (int ,int ) ;
 TYPE_2__ cm ;
 scalar_t__ cmod_base ;
 int h_high ;

void CMod_LoadEntityString( lump_t *l ) {
 cm.entityString = Hunk_Alloc( l->filelen, h_high );
 cm.numEntityChars = l->filelen;
 Com_Memcpy (cm.entityString, cmod_base + l->fileofs, l->filelen);
}

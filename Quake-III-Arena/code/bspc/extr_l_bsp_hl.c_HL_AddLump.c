
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void* filelen; void* fileofs; } ;
typedef TYPE_1__ hl_lump_t ;
struct TYPE_4__ {TYPE_1__* lumps; } ;


 void* LittleLong (int) ;
 int SafeWrite (int ,void*,int) ;
 int ftell (int ) ;
 TYPE_2__* hl_header ;
 int wadfile ;

void HL_AddLump (int lumpnum, void *data, int len)
{
 hl_lump_t *lump;

 lump = &hl_header->lumps[lumpnum];

 lump->fileofs = LittleLong( ftell(wadfile) );
 lump->filelen = LittleLong(len);
 SafeWrite (wadfile, data, (len+3)&~3);
}

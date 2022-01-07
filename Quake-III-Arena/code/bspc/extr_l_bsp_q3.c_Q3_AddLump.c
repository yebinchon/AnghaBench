
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {void* filelen; void* fileofs; } ;
typedef TYPE_1__ q3_lump_t ;
struct TYPE_5__ {TYPE_1__* lumps; } ;
typedef TYPE_2__ q3_dheader_t ;
typedef int FILE ;


 void* LittleLong (int) ;
 int SafeWrite (int *,void*,int) ;
 int ftell (int *) ;

void Q3_AddLump( FILE *bspfile, q3_dheader_t *header, int lumpnum, void *data, int len ) {
 q3_lump_t *lump;

 lump = &header->lumps[lumpnum];

 lump->fileofs = LittleLong( ftell(bspfile) );
 lump->filelen = LittleLong( len );
 SafeWrite( bspfile, data, (len+3)&~3 );
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* lumps; } ;
typedef TYPE_2__ dheader_t ;
typedef int byte ;
struct TYPE_4__ {int filelen; int fileofs; } ;


 int Error (char*) ;
 int memcpy (void*,int *,int) ;

int CopyLump( dheader_t *header, int lump, void *dest, int size ) {
 int length, ofs;

 length = header->lumps[lump].filelen;
 ofs = header->lumps[lump].fileofs;

 if ( length % size ) {
  Error ("LoadBSPFile: odd lump size");
 }

 memcpy( dest, (byte *)header + ofs, length );

 return length / size;
}

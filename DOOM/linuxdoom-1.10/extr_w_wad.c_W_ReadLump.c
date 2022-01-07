
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int handle; int size; int position; } ;
typedef TYPE_1__ lumpinfo_t ;


 int I_Error (char*,int,...) ;
 int O_BINARY ;
 int O_RDONLY ;
 int SEEK_SET ;
 int close (int) ;
 int lseek (int,int ,int ) ;
 TYPE_1__* lumpinfo ;
 int numlumps ;
 int open (int ,int) ;
 int read (int,void*,int) ;
 int reloadname ;

void
W_ReadLump
( int lump,
  void* dest )
{
    int c;
    lumpinfo_t* l;
    int handle;

    if (lump >= numlumps)
 I_Error ("W_ReadLump: %i >= numlumps",lump);

    l = lumpinfo+lump;



    if (l->handle == -1)
    {

 if ( (handle = open (reloadname,O_RDONLY | O_BINARY)) == -1)
     I_Error ("W_ReadLump: couldn't open %s",reloadname);
    }
    else
 handle = l->handle;

    lseek (handle, l->position, SEEK_SET);
    c = read (handle, dest, l->size);

    if (c < l->size)
 I_Error ("W_ReadLump: only read %i of %i on lump %i",
   c,l->size,lump);

    if (l->handle == -1)
 close (handle);


}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {void* size; void* filepos; void* infotableofs; void* numlumps; } ;
typedef TYPE_1__ wadinfo_t ;
struct TYPE_8__ {void* size; void* position; } ;
typedef TYPE_2__ lumpinfo_t ;
typedef int header ;
typedef TYPE_1__ filelump_t ;


 int I_Error (char*,int ) ;
 void* LONG (void*) ;
 int O_BINARY ;
 int O_RDONLY ;
 int SEEK_SET ;
 int Z_Free (scalar_t__) ;
 TYPE_1__* alloca (int) ;
 int close (int) ;
 int lseek (int,void*,int ) ;
 scalar_t__* lumpcache ;
 TYPE_2__* lumpinfo ;
 int open (int ,int) ;
 int read (int,TYPE_1__*,int) ;
 size_t reloadlump ;
 int reloadname ;

void W_Reload (void)
{
    wadinfo_t header;
    int lumpcount;
    lumpinfo_t* lump_p;
    unsigned i;
    int handle;
    int length;
    filelump_t* fileinfo;

    if (!reloadname)
 return;

    if ( (handle = open (reloadname,O_RDONLY | O_BINARY)) == -1)
 I_Error ("W_Reload: couldn't open %s",reloadname);

    read (handle, &header, sizeof(header));
    lumpcount = LONG(header.numlumps);
    header.infotableofs = LONG(header.infotableofs);
    length = lumpcount*sizeof(filelump_t);
    fileinfo = alloca (length);
    lseek (handle, header.infotableofs, SEEK_SET);
    read (handle, fileinfo, length);


    lump_p = &lumpinfo[reloadlump];

    for (i=reloadlump ;
  i<reloadlump+lumpcount ;
  i++,lump_p++, fileinfo++)
    {
 if (lumpcache[i])
     Z_Free (lumpcache[i]);

 lump_p->position = LONG(fileinfo->filepos);
 lump_p->size = LONG(fileinfo->size);
    }

    close (handle);
}

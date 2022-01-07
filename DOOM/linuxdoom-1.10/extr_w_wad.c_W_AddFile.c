
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int filepos; int size; int numlumps; int infotableofs; int name; int identification; } ;
typedef TYPE_1__ wadinfo_t ;
struct TYPE_10__ {int handle; int name; void* size; void* position; } ;
typedef TYPE_2__ lumpinfo_t ;
typedef int header ;
typedef TYPE_1__ filelump_t ;


 int ExtractFileBase (char*,int ) ;
 int I_Error (char*,...) ;
 void* LONG (int) ;
 int O_BINARY ;
 int O_RDONLY ;
 int SEEK_SET ;
 TYPE_1__* alloca (int) ;
 int close (int) ;
 int filelength (int) ;
 int lseek (int,int,int ) ;
 TYPE_2__* lumpinfo ;
 int numlumps ;
 int open (char*,int) ;
 int printf (char*,char*) ;
 int read (int,TYPE_1__*,int) ;
 TYPE_2__* realloc (TYPE_2__*,int) ;
 int reloadlump ;
 char* reloadname ;
 scalar_t__ strcmpi (char*,char*) ;
 int strlen (char*) ;
 scalar_t__ strncmp (int ,char*,int) ;
 int strncpy (int ,int ,int) ;

void W_AddFile (char *filename)
{
    wadinfo_t header;
    lumpinfo_t* lump_p;
    unsigned i;
    int handle;
    int length;
    int startlump;
    filelump_t* fileinfo;
    filelump_t singleinfo;
    int storehandle;




    if (filename[0] == '~')
    {
 filename++;
 reloadname = filename;
 reloadlump = numlumps;
    }

    if ( (handle = open (filename,O_RDONLY | O_BINARY)) == -1)
    {
 printf (" couldn't open %s\n",filename);
 return;
    }

    printf (" adding %s\n",filename);
    startlump = numlumps;

    if (strcmpi (filename+strlen(filename)-3 , "wad" ) )
    {

 fileinfo = &singleinfo;
 singleinfo.filepos = 0;
 singleinfo.size = LONG(filelength(handle));
 ExtractFileBase (filename, singleinfo.name);
 numlumps++;
    }
    else
    {

 read (handle, &header, sizeof(header));
 if (strncmp(header.identification,"IWAD",4))
 {

     if (strncmp(header.identification,"PWAD",4))
     {
  I_Error ("Wad file %s doesn't have IWAD "
    "or PWAD id\n", filename);
     }


 }
 header.numlumps = LONG(header.numlumps);
 header.infotableofs = LONG(header.infotableofs);
 length = header.numlumps*sizeof(filelump_t);
 fileinfo = alloca (length);
 lseek (handle, header.infotableofs, SEEK_SET);
 read (handle, fileinfo, length);
 numlumps += header.numlumps;
    }



    lumpinfo = realloc (lumpinfo, numlumps*sizeof(lumpinfo_t));

    if (!lumpinfo)
 I_Error ("Couldn't realloc lumpinfo");

    lump_p = &lumpinfo[startlump];

    storehandle = reloadname ? -1 : handle;

    for (i=startlump ; i<numlumps ; i++,lump_p++, fileinfo++)
    {
 lump_p->handle = storehandle;
 lump_p->position = LONG(fileinfo->filepos);
 lump_p->size = LONG(fileinfo->size);
 strncpy (lump_p->name, fileinfo->name, 8);
    }

    if (reloadname)
 close (handle);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int size; int filepos; int name; int infotableofs; int numlumps; int identification; } ;
typedef TYPE_1__ wadinfo_t ;
struct TYPE_7__ {int handle; void* size; void* filepos; int name; } ;
typedef TYPE_2__ lumpinfo_t ;
typedef TYPE_1__ filelump_t ;


 void* LONG (int ) ;
 int O_RDONLY ;
 int SEEK_SET ;
 int derror (char*) ;
 int lseek (int,int,int ) ;
 TYPE_2__* lumpinfo ;
 scalar_t__ malloc (int) ;
 int numlumps ;
 int open (char*,int ) ;
 int read (int,TYPE_1__*,int) ;
 scalar_t__ strncmp (int ,char*,int) ;
 int strncpy (int ,int ,int) ;

void openwad(char* wadname)
{

    int wadfile;
    int tableoffset;
    int tablelength;
    int tablefilelength;
    int i;
    wadinfo_t header;
    filelump_t* filetable;


    wadfile = open(wadname, O_RDONLY);

    if (wadfile < 0)
 derror("Could not open wadfile");

    read(wadfile, &header, sizeof header);

    if (strncmp(header.identification, "IWAD", 4))
 derror("wadfile has weirdo header");

    numlumps = LONG(header.numlumps);
    tableoffset = LONG(header.infotableofs);
    tablelength = numlumps * sizeof(lumpinfo_t);
    tablefilelength = numlumps * sizeof(filelump_t);
    lumpinfo = (lumpinfo_t *) malloc(tablelength);
    filetable = (filelump_t *) ((char*)lumpinfo + tablelength - tablefilelength);


    lseek(wadfile, tableoffset, SEEK_SET);
    read(wadfile, filetable, tablefilelength);


    for (i=0 ; i<numlumps ; i++)
    {
 strncpy(lumpinfo[i].name, filetable[i].name, 8);
 lumpinfo[i].handle = wadfile;
 lumpinfo[i].filepos = LONG(filetable[i].filepos);
 lumpinfo[i].size = LONG(filetable[i].size);

    }

}

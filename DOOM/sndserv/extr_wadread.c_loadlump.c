
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int size; int handle; int filepos; int name; } ;


 int SEEK_SET ;
 int lseek (int ,int ,int ) ;
 TYPE_1__* lumpinfo ;
 scalar_t__ malloc (int) ;
 int numlumps ;
 int read (int ,void*,int) ;
 int strncasecmp (int ,char*,int) ;

void*
loadlump
( char* lumpname,
  int* size )
{

    int i;
    void* lump;

    for (i=0 ; i<numlumps ; i++)
    {
 if (!strncasecmp(lumpinfo[i].name, lumpname, 8))
     break;
    }

    if (i == numlumps)
    {


 lump = 0;
    }
    else
    {
 lump = (void *) malloc(lumpinfo[i].size);
 lseek(lumpinfo[i].handle, lumpinfo[i].filepos, SEEK_SET);
 read(lumpinfo[i].handle, lump, lumpinfo[i].size);
 *size = lumpinfo[i].size;
    }

    return lump;

}

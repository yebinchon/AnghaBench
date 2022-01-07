
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ tag; } ;
typedef TYPE_1__ memblock_t ;
typedef int byte ;
struct TYPE_4__ {int name; } ;
typedef int FILE ;


 scalar_t__ PU_PURGELEVEL ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int fprintf (int *,char*,...) ;
 int** info ;
 void** lumpcache ;
 TYPE_2__* lumpinfo ;
 int memcpy (char*,int ,int) ;
 int numlumps ;
 size_t profilecount ;

void W_Profile (void)
{
    int i;
    memblock_t* block;
    void* ptr;
    char ch;
    FILE* f;
    int j;
    char name[9];


    for (i=0 ; i<numlumps ; i++)
    {
 ptr = lumpcache[i];
 if (!ptr)
 {
     ch = ' ';
     continue;
 }
 else
 {
     block = (memblock_t *) ( (byte *)ptr - sizeof(memblock_t));
     if (block->tag < PU_PURGELEVEL)
  ch = 'S';
     else
  ch = 'P';
 }
 info[i][profilecount] = ch;
    }
    profilecount++;

    f = fopen ("waddump.txt","w");
    name[8] = 0;

    for (i=0 ; i<numlumps ; i++)
    {
 memcpy (name,lumpinfo[i].name,8);

 for (j=0 ; j<8 ; j++)
     if (!name[j])
  break;

 for ( ; j<8 ; j++)
     name[j] = ' ';

 fprintf (f,"%s ",name);

 for (j=0 ; j<profilecount ; j++)
     fprintf (f,"    %c",info[i][j]);

 fprintf (f,"\n");
    }
    fclose (f);
}

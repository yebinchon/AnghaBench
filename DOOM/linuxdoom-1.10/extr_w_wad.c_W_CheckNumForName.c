
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * name; } ;
typedef TYPE_1__ lumpinfo_t ;


 TYPE_1__* lumpinfo ;
 int numlumps ;
 int strncpy (char*,char*,int) ;
 int strupr (char*) ;

int W_CheckNumForName (char* name)
{
    union {
 char s[9];
 int x[2];

    } name8;

    int v1;
    int v2;
    lumpinfo_t* lump_p;


    strncpy (name8.s,name,8);


    name8.s[8] = 0;


    strupr (name8.s);

    v1 = name8.x[0];
    v2 = name8.x[1];



    lump_p = lumpinfo + numlumps;

    while (lump_p-- != lumpinfo)
    {
 if ( *(int *)lump_p->name == v1
      && *(int *)&lump_p->name[4] == v2)
 {
     return lump_p - lumpinfo;
 }
    }


    return -1;
}

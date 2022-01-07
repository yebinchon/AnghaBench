
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int n_fatent; int database; int csize; } ;
typedef TYPE_1__ FATFS ;
typedef int DWORD ;



__attribute__((used)) static DWORD clst2sect (
 FATFS* fs,
 DWORD clst
)
{
 clst -= 2;
 if (clst >= fs->n_fatent - 2) return 0;
 return fs->database + fs->csize * clst;
}

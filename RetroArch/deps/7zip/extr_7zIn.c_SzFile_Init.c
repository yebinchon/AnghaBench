
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int HasStream; scalar_t__ MTimeDefined; scalar_t__ CrcDefined; scalar_t__ IsAnti; scalar_t__ IsDir; } ;
typedef TYPE_1__ CSzFileItem ;



void SzFile_Init(CSzFileItem *p)
{
   p->HasStream = 1;
   p->IsDir = 0;
   p->IsAnti = 0;
   p->CrcDefined = 0;
   p->MTimeDefined = 0;
}

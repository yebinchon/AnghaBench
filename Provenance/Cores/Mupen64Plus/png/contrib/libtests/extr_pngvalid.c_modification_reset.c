
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct TYPE_3__* next; scalar_t__ removed; scalar_t__ added; scalar_t__ modified; } ;
typedef TYPE_1__ png_modification ;



__attribute__((used)) static void
modification_reset(png_modification *pmm)
{
   if (pmm != ((void*)0))
   {
      pmm->modified = 0;
      pmm->added = 0;
      pmm->removed = 0;
      modification_reset(pmm->next);
   }
}

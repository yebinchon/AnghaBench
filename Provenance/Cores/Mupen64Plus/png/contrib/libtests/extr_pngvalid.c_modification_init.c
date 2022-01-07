
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ add; int * modify_fn; scalar_t__ chunk; int * next; } ;
typedef TYPE_1__ png_modification ;


 int memset (TYPE_1__*,int ,int) ;
 int modification_reset (TYPE_1__*) ;

__attribute__((used)) static void
modification_init(png_modification *pmm)
{
   memset(pmm, 0, sizeof *pmm);
   pmm->next = ((void*)0);
   pmm->chunk = 0;
   pmm->modify_fn = ((void*)0);
   pmm->add = 0;
   modification_reset(pmm);
}

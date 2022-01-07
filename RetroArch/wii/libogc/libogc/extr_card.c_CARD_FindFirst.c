
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int s32 ;
struct TYPE_4__ {int showall; scalar_t__* company; scalar_t__* gamecode; scalar_t__* filename; scalar_t__ filelen; scalar_t__ fileno; int chn; } ;
typedef TYPE_1__ card_dir ;


 int __card_findnext (TYPE_1__*) ;

s32 CARD_FindFirst(s32 chn, card_dir *dir, bool showall)
{

 dir->chn = chn;
 dir->fileno = 0;
 dir->filelen = 0;
 dir->filename[0] = 0;
 dir->gamecode[0] = 0;
 dir->company[0] = 0;
 dir->showall = showall;
 return __card_findnext(dir);
}

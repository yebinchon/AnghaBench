
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int s32 ;
struct TYPE_4__ {int fileno; } ;
typedef TYPE_1__ card_dir ;


 int __card_findnext (TYPE_1__*) ;

s32 CARD_FindNext(card_dir *dir)
{
      dir->fileno++;

      return __card_findnext(dir);
}

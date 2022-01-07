
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * itext_strings; int * itext_transkeys; int * itext_langtags; int * itext_keys; scalar_t__ itext_num; } ;
typedef TYPE_1__ LodePNGInfo ;



__attribute__((used)) static void LodePNGIText_init(LodePNGInfo* info)
{
  info->itext_num = 0;
  info->itext_keys = ((void*)0);
  info->itext_langtags = ((void*)0);
  info->itext_transkeys = ((void*)0);
  info->itext_strings = ((void*)0);
}

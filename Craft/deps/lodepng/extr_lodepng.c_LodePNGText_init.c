
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * text_strings; int * text_keys; scalar_t__ text_num; } ;
typedef TYPE_1__ LodePNGInfo ;



__attribute__((used)) static void LodePNGText_init(LodePNGInfo* info)
{
  info->text_num = 0;
  info->text_keys = ((void*)0);
  info->text_strings = ((void*)0);
}

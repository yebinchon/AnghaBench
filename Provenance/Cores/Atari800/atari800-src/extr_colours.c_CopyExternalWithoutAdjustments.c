
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned char* palette; } ;


 int Colours_SetRGB (int,unsigned char,unsigned char,unsigned char,int ) ;
 TYPE_1__* Colours_external ;
 int Colours_table ;

__attribute__((used)) static void CopyExternalWithoutAdjustments(void)
{
 int i;
 unsigned char *ext_ptr;
 for (i = 0, ext_ptr = Colours_external->palette; i < 256; i ++, ext_ptr += 3)
  Colours_SetRGB(i, *ext_ptr, *(ext_ptr + 1), *(ext_ptr + 2), Colours_table);
}

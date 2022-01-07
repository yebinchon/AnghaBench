
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ loaded; } ;


 TYPE_1__ COLOURS_PAL_external ;
 int GetYUVFromExternal (double*) ;
 int GetYUVFromGenerated (double*) ;

void COLOURS_PAL_GetYUV(double yuv_table[256*5])
{
 if (COLOURS_PAL_external.loaded)
  GetYUVFromExternal(yuv_table);
 else
  GetYUVFromGenerated(yuv_table);
}

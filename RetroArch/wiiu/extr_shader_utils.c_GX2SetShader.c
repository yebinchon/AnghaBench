
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ program; } ;
struct TYPE_4__ {TYPE_3__ gs; int fs; int ps; int vs; } ;
typedef TYPE_1__ GX2Shader ;


 int GX2SetFetchShader (int *) ;
 int GX2SetGeometryShader (TYPE_3__*) ;
 int GX2SetPixelShader (int *) ;
 int GX2SetVertexShader (int *) ;

void GX2SetShader(GX2Shader *shader)
{
   GX2SetVertexShader(&shader->vs);
   GX2SetPixelShader(&shader->ps);
   GX2SetFetchShader(&shader->fs);

   if (shader->gs.program)
      GX2SetGeometryShader(&shader->gs);
}

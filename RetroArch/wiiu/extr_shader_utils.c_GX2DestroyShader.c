
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_12__ {int * gs_copy_program; int * gs_program; int * ps_program; int * vs_program; } ;
typedef TYPE_5__ org_programs_t ;
struct TYPE_11__ {int size; int * program; } ;
struct TYPE_10__ {int * copyProgram; int * program; } ;
struct TYPE_9__ {int * program; } ;
struct TYPE_8__ {int * program; } ;
struct TYPE_13__ {TYPE_4__ fs; TYPE_3__ gs; TYPE_2__ ps; TYPE_1__ vs; } ;
typedef TYPE_6__ GX2Shader ;


 int MEM2_free (int *) ;

void GX2DestroyShader(GX2Shader *shader)
{

   MEM2_free(shader->vs.program);
   MEM2_free(shader->ps.program);
   MEM2_free(shader->gs.program);
   MEM2_free(shader->gs.copyProgram);

   org_programs_t *org = (org_programs_t *)(shader->fs.program + shader->fs.size);

   shader->vs.program = org->vs_program;
   shader->ps.program = org->ps_program;
   shader->gs.program = org->gs_program;
   shader->gs.copyProgram = org->gs_copy_program;


   MEM2_free(shader->fs.program);
   shader->fs.program = ((void*)0);
}

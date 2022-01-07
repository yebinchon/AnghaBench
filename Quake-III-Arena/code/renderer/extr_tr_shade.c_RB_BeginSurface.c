
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ timeOffset; scalar_t__ clampTime; int optimalStageIteratorFunc; int numUnfoggedPasses; int stages; struct TYPE_7__* remappedShader; } ;
typedef TYPE_2__ shader_t ;
struct TYPE_6__ {scalar_t__ floatTime; } ;
struct TYPE_9__ {TYPE_1__ refdef; } ;
struct TYPE_8__ {int fogNum; scalar_t__ shaderTime; TYPE_2__* shader; int currentStageIteratorFunc; int numPasses; int xstages; scalar_t__ dlightBits; scalar_t__ numVertexes; scalar_t__ numIndexes; } ;


 TYPE_4__ backEnd ;
 TYPE_3__ tess ;

void RB_BeginSurface( shader_t *shader, int fogNum ) {

 shader_t *state = (shader->remappedShader) ? shader->remappedShader : shader;

 tess.numIndexes = 0;
 tess.numVertexes = 0;
 tess.shader = state;
 tess.fogNum = fogNum;
 tess.dlightBits = 0;
 tess.xstages = state->stages;
 tess.numPasses = state->numUnfoggedPasses;
 tess.currentStageIteratorFunc = state->optimalStageIteratorFunc;

 tess.shaderTime = backEnd.refdef.floatTime - tess.shader->timeOffset;
 if (tess.shader->clampTime && tess.shaderTime >= tess.shader->clampTime) {
  tess.shaderTime = tess.shader->clampTime;
 }


}

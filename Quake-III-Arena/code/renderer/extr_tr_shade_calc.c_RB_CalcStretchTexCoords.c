
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int waveForm_t ;
struct TYPE_3__ {float** matrix; float* translate; } ;
typedef TYPE_1__ texModInfo_t ;


 float EvalWaveForm (int const*) ;
 int RB_CalcTransformTexCoords (TYPE_1__*,float*) ;

void RB_CalcStretchTexCoords( const waveForm_t *wf, float *st )
{
 float p;
 texModInfo_t tmi;

 p = 1.0f / EvalWaveForm( wf );

 tmi.matrix[0][0] = p;
 tmi.matrix[1][0] = 0;
 tmi.translate[0] = 0.5f - 0.5f * p;

 tmi.matrix[0][1] = 0;
 tmi.matrix[1][1] = p;
 tmi.translate[1] = 0.5f - 0.5f * p;

 RB_CalcTransformTexCoords( &tmi, st );
}

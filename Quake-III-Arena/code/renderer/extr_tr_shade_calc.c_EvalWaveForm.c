
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int frequency; int phase; int amplitude; int base; int func; } ;
typedef TYPE_1__ waveForm_t ;


 float* TableForFunc (int ) ;
 float WAVEVALUE (float*,int ,int ,int ,int ) ;

__attribute__((used)) static float EvalWaveForm( const waveForm_t *wf )
{
 float *table;

 table = TableForFunc( wf->func );

 return WAVEVALUE( table, wf->base, wf->amplitude, wf->phase, wf->frequency );
}

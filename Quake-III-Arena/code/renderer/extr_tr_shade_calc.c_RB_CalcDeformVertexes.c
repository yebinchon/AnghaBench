
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__* vec3_t ;
struct TYPE_7__ {scalar_t__ frequency; scalar_t__ phase; int amplitude; int base; int func; } ;
struct TYPE_5__ {float deformationSpread; TYPE_4__ deformationWave; } ;
typedef TYPE_1__ deformStage_t ;
struct TYPE_6__ {int numVertexes; scalar_t__ normal; scalar_t__ xyz; } ;


 float EvalWaveForm (TYPE_4__*) ;
 float* TableForFunc (int ) ;
 int VectorScale (float*,float,scalar_t__*) ;
 float WAVEVALUE (float*,int ,int ,scalar_t__,scalar_t__) ;
 TYPE_2__ tess ;

void RB_CalcDeformVertexes( deformStage_t *ds )
{
 int i;
 vec3_t offset;
 float scale;
 float *xyz = ( float * ) tess.xyz;
 float *normal = ( float * ) tess.normal;
 float *table;

 if ( ds->deformationWave.frequency == 0 )
 {
  scale = EvalWaveForm( &ds->deformationWave );

  for ( i = 0; i < tess.numVertexes; i++, xyz += 4, normal += 4 )
  {
   VectorScale( normal, scale, offset );

   xyz[0] += offset[0];
   xyz[1] += offset[1];
   xyz[2] += offset[2];
  }
 }
 else
 {
  table = TableForFunc( ds->deformationWave.func );

  for ( i = 0; i < tess.numVertexes; i++, xyz += 4, normal += 4 )
  {
   float off = ( xyz[0] + xyz[1] + xyz[2] ) * ds->deformationSpread;

   scale = WAVEVALUE( table, ds->deformationWave.base,
    ds->deformationWave.amplitude,
    ds->deformationWave.phase + off,
    ds->deformationWave.frequency );

   VectorScale( normal, scale, offset );

   xyz[0] += offset[0];
   xyz[1] += offset[1];
   xyz[2] += offset[2];
  }
 }
}

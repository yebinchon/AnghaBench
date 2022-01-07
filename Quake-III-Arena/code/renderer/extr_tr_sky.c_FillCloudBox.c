
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int shader_t ;


 int FillCloudySkySide (int*,int*,int) ;
 int HALF_SKY_SUBDIVISIONS ;
 int MakeSkyVec (int,int,int,int *,int ) ;
 int ceil (int) ;
 int floor (int) ;
 int myftol (int) ;
 int **** s_cloudTexCoords ;
 int ** s_skyPoints ;
 int *** s_skyTexCoords ;
 int** sky_maxs ;
 int** sky_mins ;

__attribute__((used)) static void FillCloudBox( const shader_t *shader, int stage )
{
 int i;

 for ( i =0; i < 6; i++ )
 {
  int sky_mins_subd[2], sky_maxs_subd[2];
  int s, t;
  float MIN_T;

  if ( 1 )
  {
   MIN_T = -HALF_SKY_SUBDIVISIONS;


   if ( i == 5 )
    continue;
  }
  else
  {
   switch( i )
   {
   case 0:
   case 1:
   case 2:
   case 3:
    MIN_T = -1;
    break;
   case 5:

    continue;
   case 4:
   default:
    MIN_T = -HALF_SKY_SUBDIVISIONS;
    break;
   }
  }

  sky_mins[0][i] = floor( sky_mins[0][i] * HALF_SKY_SUBDIVISIONS ) / HALF_SKY_SUBDIVISIONS;
  sky_mins[1][i] = floor( sky_mins[1][i] * HALF_SKY_SUBDIVISIONS ) / HALF_SKY_SUBDIVISIONS;
  sky_maxs[0][i] = ceil( sky_maxs[0][i] * HALF_SKY_SUBDIVISIONS ) / HALF_SKY_SUBDIVISIONS;
  sky_maxs[1][i] = ceil( sky_maxs[1][i] * HALF_SKY_SUBDIVISIONS ) / HALF_SKY_SUBDIVISIONS;

  if ( ( sky_mins[0][i] >= sky_maxs[0][i] ) ||
    ( sky_mins[1][i] >= sky_maxs[1][i] ) )
  {
   continue;
  }

  sky_mins_subd[0] = myftol( sky_mins[0][i] * HALF_SKY_SUBDIVISIONS );
  sky_mins_subd[1] = myftol( sky_mins[1][i] * HALF_SKY_SUBDIVISIONS );
  sky_maxs_subd[0] = myftol( sky_maxs[0][i] * HALF_SKY_SUBDIVISIONS );
  sky_maxs_subd[1] = myftol( sky_maxs[1][i] * HALF_SKY_SUBDIVISIONS );

  if ( sky_mins_subd[0] < -HALF_SKY_SUBDIVISIONS )
   sky_mins_subd[0] = -HALF_SKY_SUBDIVISIONS;
  else if ( sky_mins_subd[0] > HALF_SKY_SUBDIVISIONS )
   sky_mins_subd[0] = HALF_SKY_SUBDIVISIONS;
  if ( sky_mins_subd[1] < MIN_T )
   sky_mins_subd[1] = MIN_T;
  else if ( sky_mins_subd[1] > HALF_SKY_SUBDIVISIONS )
   sky_mins_subd[1] = HALF_SKY_SUBDIVISIONS;

  if ( sky_maxs_subd[0] < -HALF_SKY_SUBDIVISIONS )
   sky_maxs_subd[0] = -HALF_SKY_SUBDIVISIONS;
  else if ( sky_maxs_subd[0] > HALF_SKY_SUBDIVISIONS )
   sky_maxs_subd[0] = HALF_SKY_SUBDIVISIONS;
  if ( sky_maxs_subd[1] < MIN_T )
   sky_maxs_subd[1] = MIN_T;
  else if ( sky_maxs_subd[1] > HALF_SKY_SUBDIVISIONS )
   sky_maxs_subd[1] = HALF_SKY_SUBDIVISIONS;




  for ( t = sky_mins_subd[1]+HALF_SKY_SUBDIVISIONS; t <= sky_maxs_subd[1]+HALF_SKY_SUBDIVISIONS; t++ )
  {
   for ( s = sky_mins_subd[0]+HALF_SKY_SUBDIVISIONS; s <= sky_maxs_subd[0]+HALF_SKY_SUBDIVISIONS; s++ )
   {
    MakeSkyVec( ( s - HALF_SKY_SUBDIVISIONS ) / ( float ) HALF_SKY_SUBDIVISIONS,
       ( t - HALF_SKY_SUBDIVISIONS ) / ( float ) HALF_SKY_SUBDIVISIONS,
       i,
       ((void*)0),
       s_skyPoints[t][s] );

    s_skyTexCoords[t][s][0] = s_cloudTexCoords[i][t][s][0];
    s_skyTexCoords[t][s][1] = s_cloudTexCoords[i][t][s][1];
   }
  }


  FillCloudySkySide( sky_mins_subd, sky_maxs_subd, ( stage == 0 ) );
 }
}

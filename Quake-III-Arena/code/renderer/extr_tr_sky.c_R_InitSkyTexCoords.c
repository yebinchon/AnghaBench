
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int* vec3_t ;
struct TYPE_3__ {int zFar; } ;
struct TYPE_4__ {TYPE_1__ viewParms; } ;


 int DotProduct (int*,int*) ;
 int HALF_SKY_SUBDIVISIONS ;
 int MakeSkyVec (int,int,int,int *,int*) ;
 float Q_acos (int) ;
 int SKY_SUBDIVISIONS ;
 int SQR (float) ;
 int VectorNormalize (int*) ;
 int VectorScale (int*,float,int*) ;
 TYPE_2__ backEnd ;
 float**** s_cloudTexCoords ;
 float*** s_cloudTexP ;
 int sqrt (int) ;

void R_InitSkyTexCoords( float heightCloud )
{
 int i, s, t;
 float radiusWorld = 4096;
 float p;
 float sRad, tRad;
 vec3_t skyVec;
 vec3_t v;



 backEnd.viewParms.zFar = 1024;

 for ( i = 0; i < 6; i++ )
 {
  for ( t = 0; t <= SKY_SUBDIVISIONS; t++ )
  {
   for ( s = 0; s <= SKY_SUBDIVISIONS; s++ )
   {

    MakeSkyVec( ( s - HALF_SKY_SUBDIVISIONS ) / ( float ) HALF_SKY_SUBDIVISIONS,
       ( t - HALF_SKY_SUBDIVISIONS ) / ( float ) HALF_SKY_SUBDIVISIONS,
       i,
       ((void*)0),
       skyVec );


    p = ( 1.0f / ( 2 * DotProduct( skyVec, skyVec ) ) ) *
     ( -2 * skyVec[2] * radiusWorld +
        2 * sqrt( SQR( skyVec[2] ) * SQR( radiusWorld ) +
                  2 * SQR( skyVec[0] ) * radiusWorld * heightCloud +
         SQR( skyVec[0] ) * SQR( heightCloud ) +
         2 * SQR( skyVec[1] ) * radiusWorld * heightCloud +
         SQR( skyVec[1] ) * SQR( heightCloud ) +
         2 * SQR( skyVec[2] ) * radiusWorld * heightCloud +
         SQR( skyVec[2] ) * SQR( heightCloud ) ) );

    s_cloudTexP[i][t][s] = p;


    VectorScale( skyVec, p, v );
    v[2] += radiusWorld;


    VectorNormalize( v );

    sRad = Q_acos( v[0] );
    tRad = Q_acos( v[1] );

    s_cloudTexCoords[i][t][s][0] = sRad;
    s_cloudTexCoords[i][t][s][1] = tRad;
   }
  }
 }
}

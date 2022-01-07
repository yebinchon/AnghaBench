
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int R_InitData () ;
 int R_InitLightTables () ;
 int R_InitPlanes () ;
 int R_InitPointToAngle () ;
 int R_InitSkyMap () ;
 int R_InitTables () ;
 int R_InitTranslationTables () ;
 int R_SetViewSize (int ,int ) ;
 int detailLevel ;
 scalar_t__ framecount ;
 int printf (char*) ;
 int screenblocks ;

void R_Init (void)
{
    R_InitData ();
    printf ("\nR_InitData");
    R_InitPointToAngle ();
    printf ("\nR_InitPointToAngle");
    R_InitTables ();

    printf ("\nR_InitTables");

    R_SetViewSize (screenblocks, detailLevel);
    R_InitPlanes ();
    printf ("\nR_InitPlanes");
    R_InitLightTables ();
    printf ("\nR_InitLightTables");
    R_InitSkyMap ();
    printf ("\nR_InitSkyMap");
    R_InitTranslationTables ();
    printf ("\nR_InitTranslationsTables");

    framecount = 0;
}

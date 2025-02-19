
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int xMin; int yMin; int xMax; int yMax; } ;
typedef int FT_Outline ;
typedef TYPE_1__ FT_BBox ;


 int FT_Outline_Get_BBox (int *,TYPE_1__*) ;
 int FT_Outline_Get_CBox (int *,TYPE_1__*) ;
 double XVAL (int) ;
 long get_time () ;
 int printf (char*,int,int,int,int,...) ;

__attribute__((used)) static void
  profile_outline( FT_Outline* outline,
                   long repeat )
  {
    FT_BBox bbox;
    long count;
    long time0;

    time0 = get_time();
    for ( count = repeat; count > 0; count-- )
      FT_Outline_Get_CBox( outline, &bbox );

    time0 = get_time() - time0;
    printf( "time = %6.3f cbox = [%8.4f %8.4f %8.4f %8.4f]\n",
             ((double)time0/10000.0),
             XVAL( bbox.xMin ),
             XVAL( bbox.yMin ),
             XVAL( bbox.xMax ),
             XVAL( bbox.yMax ) );
    printf( "cbox_hex = [%08X %08X %08X %08X]\n",
             bbox.xMin, bbox.yMin, bbox.xMax, bbox.yMax );


    time0 = get_time();
    for ( count = repeat; count > 0; count-- )
      FT_Outline_Get_BBox( outline, &bbox );

    time0 = get_time() - time0;
    printf( "time = %6.3f bbox = [%8.4f %8.4f %8.4f %8.4f]\n",
             ((double)time0/10000.0),
             XVAL( bbox.xMin ),
             XVAL( bbox.yMin ),
             XVAL( bbox.xMax ),
             XVAL( bbox.yMax ) );
    printf( "bbox_hex = [%08X %08X %08X %08X]\n",
             bbox.xMin, bbox.yMin, bbox.xMax, bbox.yMax );
  }


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int yMax; int xMax; int yMin; int xMin; } ;
typedef int FT_Outline ;
typedef TYPE_1__ FT_BBox ;


 int FT_Outline_Get_BBox (int *,TYPE_1__*) ;
 int FT_Outline_Get_CBox (int *,TYPE_1__*) ;
 double XVAL (int ) ;
 int printf (char*,double,double,double,double) ;

__attribute__((used)) static void
  dump_outline( FT_Outline* outline )
  {
    FT_BBox bbox;


    FT_Outline_Get_CBox( outline, &bbox );
    printf( "cbox = [%.2f %.2f %.2f %.2f]\n",
             XVAL( bbox.xMin ),
             XVAL( bbox.yMin ),
             XVAL( bbox.xMax ),
             XVAL( bbox.yMax ) );


    FT_Outline_Get_BBox( outline, &bbox );
    printf( "bbox = [%.2f %.2f %.2f %.2f]\n",
             XVAL( bbox.xMin ),
             XVAL( bbox.yMin ),
             XVAL( bbox.xMax ),
             XVAL( bbox.yMax ) );
  }

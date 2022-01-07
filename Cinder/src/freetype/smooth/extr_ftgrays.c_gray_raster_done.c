
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef TYPE_1__* gray_PRaster ;
struct TYPE_2__ {int memory; } ;
typedef scalar_t__ FT_Raster ;
typedef int FT_Memory ;


 int FT_FREE (scalar_t__) ;

__attribute__((used)) static void
  gray_raster_done( FT_Raster raster )
  {
    FT_Memory memory = (FT_Memory)((gray_PRaster)raster)->memory;


    FT_FREE( raster );
  }

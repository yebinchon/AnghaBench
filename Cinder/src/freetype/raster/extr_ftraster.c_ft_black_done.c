
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* black_PRaster ;
struct TYPE_4__ {int memory; } ;
typedef int FT_Memory ;


 int FT_FREE (TYPE_1__*) ;

__attribute__((used)) static void
  ft_black_done( black_PRaster raster )
  {
    FT_Memory memory = (FT_Memory)raster->memory;


    FT_FREE( raster );
  }

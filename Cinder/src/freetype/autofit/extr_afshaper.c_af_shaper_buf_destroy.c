
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int memory; } ;
typedef int FT_Memory ;
typedef TYPE_1__* FT_Face ;


 int FT_FREE (void*) ;

void
  af_shaper_buf_destroy( FT_Face face,
                         void* buf )
  {
    FT_Memory memory = face->memory;


    FT_FREE( buf );
  }

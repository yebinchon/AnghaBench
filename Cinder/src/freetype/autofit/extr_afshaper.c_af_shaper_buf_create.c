
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int memory; } ;
typedef int FT_ULong ;
typedef int FT_Memory ;
typedef TYPE_1__* FT_Face ;
typedef int FT_Error ;


 int FT_MEM_ALLOC (int *,int) ;

void*
  af_shaper_buf_create( FT_Face face )
  {
    FT_Error error;
    FT_Memory memory = face->memory;
    FT_ULong* buf;


    FT_MEM_ALLOC( buf, sizeof ( FT_ULong ) );

    return (void*)buf;
  }


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ w; } ;
typedef TYPE_1__ bspface_t ;


 int FreeWinding (scalar_t__) ;
 int free (TYPE_1__*) ;

void FreeBspFace( bspface_t *f ) {
 if ( f->w ) {
  FreeWinding( f->w );
 }
 free( f );
}

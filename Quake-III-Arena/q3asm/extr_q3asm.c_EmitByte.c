
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t imageUsed; int* image; } ;
typedef TYPE_1__ segment_t ;


 int Error (char*) ;
 size_t MAX_IMAGE ;

void EmitByte( segment_t *seg, int v ) {
 if ( seg->imageUsed >= MAX_IMAGE ) {
  Error( "MAX_IMAGE" );
 }
 seg->image[ seg->imageUsed ] = v;
 seg->imageUsed++;
}

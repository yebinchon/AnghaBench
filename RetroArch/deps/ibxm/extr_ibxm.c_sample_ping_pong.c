
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sample {int loop_start; int loop_length; short* data; } ;


 scalar_t__ calloc (int,int) ;
 int free (short*) ;
 int memcpy (short*,short*,int) ;

__attribute__((used)) static void sample_ping_pong( struct sample *sample ) {
 int idx;
 int loop_start = sample->loop_start;
 int loop_length = sample->loop_length;
 int loop_end = loop_start + loop_length;
 short *sample_data = sample->data;
 short *new_data = (short*)calloc( loop_end + loop_length + 1, sizeof( short ) );
 if( new_data ) {
  memcpy( new_data, sample_data, loop_end * sizeof( short ) );
  for( idx = 0; idx < loop_length; idx++ ) {
   new_data[ loop_end + idx ] = sample_data[ loop_end - idx - 1 ];
  }
  free( sample->data );
  sample->data = new_data;
  sample->loop_length *= 2;
  sample->data[ loop_start + sample->loop_length ] = sample->data[ loop_start ];
 }
}

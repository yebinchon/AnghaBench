
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pattern {int num_channels; int num_rows; int * data; } ;
struct note {int param; int effect; int volume; int instrument; int key; } ;


 int memset (struct note*,int ,int) ;

__attribute__((used)) static void pattern_get_note( struct pattern *pattern, int row, int chan, struct note *dest ) {
 int offset = ( row * pattern->num_channels + chan ) * 5;
 if( offset >= 0 && row < pattern->num_rows && chan < pattern->num_channels ) {
  dest->key = pattern->data[ offset ];
  dest->instrument = pattern->data[ offset + 1 ];
  dest->volume = pattern->data[ offset + 2 ];
  dest->effect = pattern->data[ offset + 3 ];
  dest->param = pattern->data[ offset + 4 ];
 } else {
  memset( dest, 0, sizeof( struct note ) );
 }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct module {int sequence_len; int* sequence; int num_patterns; TYPE_1__* patterns; } ;
struct TYPE_2__ {int num_rows; } ;



__attribute__((used)) static int module_init_play_count( struct module *module, char **play_count ) {
 int idx, pat, rows, len = 0;
 for( idx = 0; idx < module->sequence_len; idx++ ) {
  pat = module->sequence[ idx ];
  rows = ( pat < module->num_patterns ) ? module->patterns[ pat ].num_rows : 0;
  if( play_count ) {
   play_count[ idx ] = play_count[ 0 ] ? &play_count[ 0 ][ len ] : ((void*)0);
  }
  len += rows;
 }
 return len;
}

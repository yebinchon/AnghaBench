
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct module {int num_patterns; int num_instruments; int num_samples; struct module* instruments; struct module* samples; struct module* data; struct module* patterns; struct module* sequence; struct module* default_panning; } ;
struct instrument {int num_patterns; int num_instruments; int num_samples; struct instrument* instruments; struct instrument* samples; struct instrument* data; struct instrument* patterns; struct instrument* sequence; struct instrument* default_panning; } ;


 int free (struct module*) ;

void dispose_module( struct module *module ) {
 int idx, sam;
 struct instrument *instrument;
 free( module->default_panning );
 free( module->sequence );
 if( module->patterns ) {
  for( idx = 0; idx < module->num_patterns; idx++ ) {
   free( module->patterns[ idx ].data );
  }
  free( module->patterns );
 }
 if( module->instruments ) {
  for( idx = 0; idx <= module->num_instruments; idx++ ) {
   instrument = &module->instruments[ idx ];
   if( instrument->samples ) {
    for( sam = 0; sam < instrument->num_samples; sam++ ) {
     free( instrument->samples[ sam ].data );
    }
    free( instrument->samples );
   }
  }
  free( module->instruments );
 }
 free( module );
}

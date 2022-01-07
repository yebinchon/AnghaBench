
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct replay {int sample_rate; int interpolation; int* ramp_buf; struct channel* channels; struct module* module; } ;
struct module {int num_channels; } ;
struct channel {int dummy; } ;


 scalar_t__ calloc (int,int) ;
 int dispose_replay (struct replay*) ;
 int replay_set_sequence_pos (struct replay*,int ) ;

struct replay* new_replay( struct module *module, int sample_rate, int interpolation ) {
 struct replay *replay = (struct replay*)calloc( 1, sizeof( struct replay ) );
 if( replay ) {
  replay->module = module;
  replay->sample_rate = sample_rate;
  replay->interpolation = interpolation;
  replay->ramp_buf = (int*)calloc( 128, sizeof( int ) );
  replay->channels = (struct channel*)calloc( module->num_channels, sizeof( struct channel ) );
  if( replay->ramp_buf && replay->channels ) {
   replay_set_sequence_pos( replay, 0 );
  } else {
   dispose_replay( replay );
   replay = ((void*)0);
  }
 }
 return replay;
}

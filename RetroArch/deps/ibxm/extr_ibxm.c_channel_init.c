
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct replay {TYPE_1__* module; } ;
struct channel {int id; int random_seed; TYPE_2__* instrument; int * sample; int panning; struct replay* replay; } ;
struct TYPE_4__ {int * samples; } ;
struct TYPE_3__ {TYPE_2__* instruments; int * default_panning; } ;


 int memset (struct channel*,int ,int) ;

__attribute__((used)) static void channel_init( struct channel *channel, struct replay *replay, int idx ) {
 memset( channel, 0, sizeof( struct channel ) );
 channel->replay = replay;
 channel->id = idx;
 channel->panning = replay->module->default_panning[ idx ];
 channel->instrument = &replay->module->instruments[ 0 ];
 channel->sample = &channel->instrument->samples[ 0 ];
 channel->random_seed = ( idx + 1 ) * 0xABCDEF;
}

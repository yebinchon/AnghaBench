
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct string_list {int dummy; } ;


 int SND_SEQ_PORT_CAP_READ ;
 int SND_SEQ_PORT_CAP_SUBS_READ ;
 int alsa_midi_get_avail_ports (struct string_list*,int) ;

__attribute__((used)) static bool alsa_midi_get_avail_inputs(struct string_list *inputs)
{
   return alsa_midi_get_avail_ports(inputs, SND_SEQ_PORT_CAP_READ |
         SND_SEQ_PORT_CAP_SUBS_READ);
}

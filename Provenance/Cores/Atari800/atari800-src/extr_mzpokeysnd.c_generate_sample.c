
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PokeyState ;


 int POKEYSND_playback_freq ;
 int advance_ticks (int *,int) ;
 int pokey_frq ;
 double read_resam_all (int *) ;

__attribute__((used)) static double generate_sample(PokeyState* ps)
{



    advance_ticks(ps, pokey_frq/POKEYSND_playback_freq);
    return read_resam_all(ps);
}

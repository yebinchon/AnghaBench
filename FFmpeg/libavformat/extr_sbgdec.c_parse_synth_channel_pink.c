
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sbg_script_synth {int vol; int type; } ;
struct sbg_parser {int dummy; } ;


 int FORWARD_ERROR (int ) ;
 int SBG_TYPE_NOISE ;
 int lex_fixed (struct sbg_parser*,char*,int) ;
 int parse_volume (struct sbg_parser*,int*) ;

__attribute__((used)) static int parse_synth_channel_pink(struct sbg_parser *p,
                                    struct sbg_script_synth *synth)
{
    int vol;

    if (!lex_fixed(p, "pink", 4))
        return 0;
    FORWARD_ERROR(parse_volume(p, &vol));
    synth->type = SBG_TYPE_NOISE;
    synth->vol = vol;
    return 1;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sbg_script_synth {int carrier; int vol; int type; } ;
struct sbg_parser {int log; } ;


 int AVERROR (int ) ;
 int AVERROR_INVALIDDATA ;
 int EDOM ;
 int FORWARD_ERROR (int ) ;
 int SBG_TYPE_BELL ;
 int lex_double (struct sbg_parser*,double*) ;
 int lex_fixed (struct sbg_parser*,char*,int) ;
 int parse_volume (struct sbg_parser*,int*) ;
 scalar_t__ scale_double (int ,double,int,int*) ;

__attribute__((used)) static int parse_synth_channel_bell(struct sbg_parser *p,
                                    struct sbg_script_synth *synth)
{
    double carrierf;
    int carrier, vol;

    if (!lex_fixed(p, "bell", 4))
        return 0;
    if (!lex_double(p, &carrierf))
        return AVERROR_INVALIDDATA;
    FORWARD_ERROR(parse_volume(p, &vol));
    if (scale_double(p->log, carrierf, 1, &carrier) < 0)
        return AVERROR(EDOM);
    synth->type = SBG_TYPE_BELL;
    synth->carrier = carrier;
    synth->vol = vol;
    return 1;
}

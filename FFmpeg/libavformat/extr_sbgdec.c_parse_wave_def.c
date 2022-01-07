
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sbg_parser {int err_msg; } ;


 int AVERROR_PATCHWELCOME ;
 int snprintf (int ,int,char*) ;

__attribute__((used)) static int parse_wave_def(struct sbg_parser *p, int wavenum)
{
    snprintf(p->err_msg, sizeof(p->err_msg),
             "waveform definitions not yet implemented");
    return AVERROR_PATCHWELCOME;
}

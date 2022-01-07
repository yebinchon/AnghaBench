
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int filter_mode; } ;
typedef TYPE_1__ DCACoreDecoder ;


 int erase_dsp_history (TYPE_1__*) ;

__attribute__((used)) static void set_filter_mode(DCACoreDecoder *s, int mode)
{
    if (s->filter_mode != mode) {
        erase_dsp_history(s);
        s->filter_mode = mode;
    }
}

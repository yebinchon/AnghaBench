
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct s_write {int new_channel; TYPE_1__* data608; } ;
struct TYPE_2__ {int channel; scalar_t__ cursor_column; } ;


 int cc_channel ;
 scalar_t__ debug_608 ;
 int hb_log (char*,unsigned char,...) ;
 int write_char (unsigned char,struct s_write*) ;

__attribute__((used)) static unsigned char handle_extended(unsigned char hi, unsigned char lo,
                                     struct s_write *wb)
{

    if (wb->new_channel > 2)
    {
        wb->new_channel -= 2;
        if (debug_608)
            hb_log ("\nChannel correction, now %d\n", wb->new_channel);
    }
    wb->data608->channel=wb->new_channel;
    if (wb->data608->channel!=cc_channel)
        return 0;


    unsigned char c=0;

    if (debug_608)
        hb_log ("\rExtended: %02X %02X\n",hi,lo);
    if (lo>=0x20 && lo<=0x3f && (hi==0x12 || hi==0x13))
    {
        switch (hi)
        {
            case 0x12:
                c=lo+0x70;
                break;
            case 0x13:
                c=lo+0x90;
                break;
        }



        if (wb->data608->cursor_column>0)
            wb->data608->cursor_column--;

        write_char (c,wb);
    }
    return 1;
}

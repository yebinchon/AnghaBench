
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct s_write {int in_xds_mode; int last_scr_sequence; TYPE_1__* data608; int last_pts; scalar_t__ direct_rollup; } ;
struct TYPE_2__ {int channel; unsigned char last_c1; unsigned char last_c2; scalar_t__ mode; int current_visible_scr_sequence; int current_visible_start_ms; } ;


 scalar_t__ MODE_ROLLUP_2 ;
 scalar_t__ MODE_ROLLUP_3 ;
 scalar_t__ MODE_ROLLUP_4 ;
 int cc_channel ;
 scalar_t__ debug_608 ;
 int disCommand (unsigned char,unsigned char,struct s_write*) ;
 int handle_single (unsigned char,struct s_write*) ;
 int hb_log (char*) ;
 int write_cc_buffer (struct s_write*) ;

__attribute__((used)) static void process608(const unsigned char *data, int length,
                       struct s_write *wb)
{
    static int textprinted = 0;
    int i;

    if (data!=((void*)0))
    {
        for (i=0;i<length;i=i+2)
        {
            unsigned char hi, lo;
            hi = data[i] & 0x7F;
            lo = data[i+1] & 0x7F;

            if (hi==0 && lo==0)
                continue;
            if (hi>=0x01 && hi<=0x0E)
            {



                wb->data608->channel=3;
                wb->in_xds_mode=1;
            }
            if (hi==0x0F)
            {
                wb->in_xds_mode=0;
                continue;
            }
            if (hi>=0x10 && hi<0x1F)


            {


                if (debug_608 && textprinted == 1 )
                {
                    hb_log("\n");
                    textprinted = 0;
                }

                wb->in_xds_mode=0;
                if (wb->data608->last_c1==hi && wb->data608->last_c2==lo)
                {

                    continue;
                }
                wb->data608->last_c1=hi;
                wb->data608->last_c2=lo;
                disCommand (hi,lo,wb);
            }
            if (hi>=0x20)
            {

                if (wb->data608->channel!=cc_channel)
                    continue;

                if (debug_608)
                {
                    if( textprinted == 0 )
                    {
                        hb_log("\n");
                        textprinted = 1;
                    }
                }

                handle_single(hi,wb);
                handle_single(lo,wb);
                wb->data608->last_c1=0;
                wb->data608->last_c2=0;
            }

            if ( debug_608 && !textprinted && wb->data608->channel==cc_channel )
            {

            }

            if ((wb->data608->mode == MODE_ROLLUP_2 ||
                 wb->data608->mode == MODE_ROLLUP_3 ||
                 wb->data608->mode == MODE_ROLLUP_4) &&
                wb->direct_rollup)
            {


                write_cc_buffer(wb);
                wb->data608->current_visible_start_ms = wb->last_pts;
                wb->data608->current_visible_scr_sequence = wb->last_scr_sequence;
            }
        }
    }
}

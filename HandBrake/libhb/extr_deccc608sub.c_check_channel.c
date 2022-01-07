
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct s_write {TYPE_1__* data608; } ;
struct TYPE_2__ {int channel; } ;


 scalar_t__ debug_608 ;
 int hb_log (char*) ;

__attribute__((used)) static int check_channel(unsigned char c1, struct s_write *wb)
{
    if (c1==0x14)
    {
        if (debug_608 && wb->data608->channel!=1)
            hb_log ("\nChannel change, now 1\n");
        return 1;
    }
    if (c1==0x1c)
    {
        if (debug_608 && wb->data608->channel!=2)
            hb_log ("\nChannel change, now 2\n");
        return 2;
    }
    if (c1==0x15)
    {
        if (debug_608 && wb->data608->channel!=3)
            hb_log ("\nChannel change, now 3\n");
        return 3;
    }
    if (c1==0x1d)
    {
        if (debug_608 && wb->data608->channel!=4)
            hb_log ("\nChannel change, now 4\n");
        return 4;
    }


    return wb->data608->channel;
}

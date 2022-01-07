
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct s_write {TYPE_1__* data608; } ;
struct TYPE_2__ {scalar_t__ channel; } ;


 scalar_t__ cc_channel ;
 scalar_t__ debug_608 ;
 int hb_log (char*,unsigned char const) ;
 int write_char (unsigned char const,struct s_write*) ;

__attribute__((used)) static void handle_single(const unsigned char c1, struct s_write *wb)
{
    if (c1<0x20 || wb->data608->channel!=cc_channel)
        return;
    if (debug_608)
        hb_log ("%c",c1);



    write_char (c1,wb);
}

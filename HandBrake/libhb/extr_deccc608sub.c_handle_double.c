
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct s_write {TYPE_1__* data608; } ;
struct TYPE_2__ {scalar_t__ channel; } ;


 scalar_t__ cc_channel ;
 scalar_t__ debug_608 ;
 int hb_log (char*,unsigned char const,unsigned char const,unsigned char) ;
 int write_char (unsigned char,struct s_write*) ;

__attribute__((used)) static void handle_double(const unsigned char c1, const unsigned char c2,
                          struct s_write *wb)
{
    unsigned char c;
    if (wb->data608->channel!=cc_channel)
        return;
    if (c2>=0x30 && c2<=0x3f)
    {
        c=c2 + 0x50;
        if (debug_608)
            hb_log ("\rDouble: %02X %02X  -->  %c\n",c1,c2,c);
        write_char(c,wb);
    }
}

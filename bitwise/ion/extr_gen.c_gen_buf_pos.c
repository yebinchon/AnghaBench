
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int name; int line; } ;
typedef TYPE_1__ SrcPos ;


 int buf_printf (char*,char*,...) ;
 scalar_t__ flag_nolinesync ;
 char* gen_buf ;
 int gen_str (int ,int) ;

void gen_buf_pos(char **pbuf, SrcPos pos) {
    if (flag_nolinesync) {
        return;
    }
    char *buf = *pbuf;
    buf_printf(buf, "\n#line %d ", pos.line);
    char *old_gen_buf = gen_buf;
    gen_buf = buf;
    gen_str(pos.name, 0);
    buf = gen_buf;
    gen_buf = old_gen_buf;
    buf_printf(buf, "\n");
    *pbuf = buf;
}

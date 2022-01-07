
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ line; scalar_t__ name; } ;
typedef TYPE_1__ SrcPos ;


 scalar_t__ flag_nolinesync ;
 TYPE_1__ gen_pos ;
 int gen_str (scalar_t__,int) ;
 int genf (char*) ;
 int genlnf (char*,scalar_t__) ;

void gen_sync_pos(SrcPos pos) {
    if (flag_nolinesync) {
        return;
    }
    if (gen_pos.line != pos.line || gen_pos.name != pos.name) {
        genlnf("#line %d", pos.line);
        if (gen_pos.name != pos.name) {
            genf(" ");
            gen_str(pos.name, 0);
        }
        gen_pos = pos;
    }
}

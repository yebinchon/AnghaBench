
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ gen_postamble_buf ;
 int genlnf (char*,scalar_t__) ;

void gen_postamble(void) {
    if (gen_postamble_buf) {
        genlnf("%s", gen_postamble_buf);
    }
}

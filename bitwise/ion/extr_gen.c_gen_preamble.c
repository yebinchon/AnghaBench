
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ gen_preamble_buf ;
 int genlnf (char*,scalar_t__) ;

void gen_preamble(void) {
    if (gen_preamble_buf) {
        genlnf("%s", gen_preamble_buf);
    }
}

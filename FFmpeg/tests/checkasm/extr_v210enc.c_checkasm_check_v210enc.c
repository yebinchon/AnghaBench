
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int pack_line_10; int pack_line_8; } ;
typedef TYPE_1__ V210EncContext ;


 scalar_t__ check_func (int ,char*) ;
 int check_pack_line (int ,int) ;
 int ff_v210enc_init (TYPE_1__*) ;
 int report (char*) ;
 int uint16_t ;
 int uint8_t ;

void checkasm_check_v210enc(void)
{
    V210EncContext h;

    ff_v210enc_init(&h);

    if (check_func(h.pack_line_8, "v210_planar_pack_8"))
        check_pack_line(uint8_t, 0xffffffff);

    if (check_func(h.pack_line_10, "v210_planar_pack_10"))
        check_pack_line(uint16_t, 0x03ff03ff);

    report("planar_pack");
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HuffYUVDSPContext ;


 int AV_PIX_FMT_YUV422P ;
 int av_clip (int ,int,int) ;
 int check_add_int16 (int ,int,int,char*) ;
 int ff_huffyuvdsp_init (int *,int ) ;
 int report (char*) ;
 int rnd () ;

void checkasm_check_huffyuvdsp(void)
{
    HuffYUVDSPContext c;
    int width = 16 * av_clip(rnd(), 16, 128);

    ff_huffyuvdsp_init(&c, AV_PIX_FMT_YUV422P);


    check_add_int16(c, 65535, width, "add_int16_rnd_width");
    report("add_int16_rnd_width");


    check_add_int16(c, 65535, 16*128, "add_int16_128");
    report("add_int16_128");
}

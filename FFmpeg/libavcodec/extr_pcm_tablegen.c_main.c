
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int WRITE_ARRAY (char*,int ,int ) ;
 int linear_to_alaw ;
 int linear_to_ulaw ;
 int linear_to_vidc ;
 int pcm_alaw_tableinit () ;
 int pcm_ulaw_tableinit () ;
 int pcm_vidc_tableinit () ;
 int uint8_t ;
 int write_fileheader () ;

int main(void)
{
    pcm_alaw_tableinit();
    pcm_ulaw_tableinit();
    pcm_vidc_tableinit();

    write_fileheader();

    WRITE_ARRAY("static const", uint8_t, linear_to_alaw);
    WRITE_ARRAY("static const", uint8_t, linear_to_ulaw);
    WRITE_ARRAY("static const", uint8_t, linear_to_vidc);

    return 0;
}

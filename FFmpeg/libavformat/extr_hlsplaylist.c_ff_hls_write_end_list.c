
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int AVIOContext ;


 int avio_printf (int *,char*) ;

void ff_hls_write_end_list (AVIOContext *out) {
    if (!out)
        return;
    avio_printf(out, "#EXT-X-ENDLIST\n");
}

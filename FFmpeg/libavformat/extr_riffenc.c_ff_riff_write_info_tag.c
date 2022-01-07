
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int AVIOContext ;


 size_t UINT32_MAX ;
 int avio_put_str (int *,char const*) ;
 int avio_w8 (int *,int ) ;
 int avio_wl32 (int *,size_t) ;
 int ffio_wfourcc (int *,char const*) ;
 size_t strlen (char const*) ;

void ff_riff_write_info_tag(AVIOContext *pb, const char *tag, const char *str)
{
    size_t len = strlen(str);
    if (len > 0 && len < UINT32_MAX) {
        len++;
        ffio_wfourcc(pb, tag);
        avio_wl32(pb, len);
        avio_put_str(pb, str);
        if (len & 1)
            avio_w8(pb, 0);
    }
}

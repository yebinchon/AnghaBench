
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char uint8_t ;
typedef enum ID3v2Encoding { ____Placeholder_ID3v2Encoding } ID3v2Encoding ;
typedef int AVIOContext ;


 int ID3v2_ENCODING_UTF16BOM ;
 int avio_put_str (int *,char const*) ;
 int avio_put_str16le (int *,char const*) ;
 int avio_wl16 (int *,int) ;

__attribute__((used)) static void id3v2_encode_string(AVIOContext *pb, const uint8_t *str,
                               enum ID3v2Encoding enc)
{
    int (*put)(AVIOContext*, const char*);

    if (enc == ID3v2_ENCODING_UTF16BOM) {
        avio_wl16(pb, 0xFEFF);
        put = avio_put_str16le;
    } else
        put = avio_put_str;

    put(pb, str);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int AVIOContext ;


 int avio_put_str16le (int *,char const*) ;
 int avio_wl32 (int *,int) ;
 int ff_metadata_guid ;
 int ff_put_guid (int *,int *) ;

__attribute__((used)) static void write_metadata_header(AVIOContext *pb, int type, const char *key, int value_size)
{
    ff_put_guid(pb, &ff_metadata_guid);
    avio_wl32(pb, type);
    avio_wl32(pb, value_size);
    avio_put_str16le(pb, key);
}

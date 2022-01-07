
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int AVIOContext ;


 int avio_wl32 (int *,int) ;
 int write_metadata_header (int *,int ,char const*,int) ;

__attribute__((used)) static void write_tag_int32(AVIOContext *pb, const char *key, int value)
{
    write_metadata_header(pb, 0, key, 4);
    avio_wl32(pb, value);
}

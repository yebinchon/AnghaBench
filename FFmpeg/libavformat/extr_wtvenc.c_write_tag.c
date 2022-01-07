
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int AVIOContext ;


 int avio_put_str16le (int *,char const*) ;
 int strlen (char const*) ;
 int write_metadata_header (int *,int,char const*,int) ;

__attribute__((used)) static void write_tag(AVIOContext *pb, const char *key, const char *value)
{
    write_metadata_header(pb, 1, key, strlen(value)*2 + 2);
    avio_put_str16le(pb, value);
}

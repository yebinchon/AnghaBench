
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int* UID ;


 int memcmp (int*,int ,int) ;
 int mxf_header_partition_pack_key ;

__attribute__((used)) static int mxf_is_partition_pack_key(UID key)
{

    return !memcmp(key, mxf_header_partition_pack_key, 13) &&
            key[13] >= 2 && key[13] <= 4;
}

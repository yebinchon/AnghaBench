
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int AVIOContext ;


 int NEEDS_CHECKING ;
 int avio_r8 (int *) ;

__attribute__((used)) static int ebml_read_uint(AVIOContext *pb, int size, uint64_t *num)
{
    int n = 0;


    *num = 0;
    while (n++ < size)
        *num = (*num << 8) | avio_r8(pb);

    return NEEDS_CHECKING;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int int64_t ;
typedef int AVIOContext ;


 int NEEDS_CHECKING ;
 int avio_r8 (int *) ;
 int sign_extend (int,int) ;

__attribute__((used)) static int ebml_read_sint(AVIOContext *pb, int size, int64_t *num)
{
    int n = 1;

    if (size == 0) {
        *num = 0;
    } else {
        *num = sign_extend(avio_r8(pb), 8);


        while (n++ < size)
            *num = ((uint64_t)*num << 8) | avio_r8(pb);
    }

    return NEEDS_CHECKING;
}

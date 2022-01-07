
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int MatroskaDemuxContext ;
typedef int AVIOContext ;


 int EBML_UNKNOWN_LENGTH ;
 int ebml_read_num (int *,int *,int,int*,int) ;

__attribute__((used)) static int ebml_read_length(MatroskaDemuxContext *matroska, AVIOContext *pb,
                            uint64_t *number)
{
    int res = ebml_read_num(matroska, pb, 8, number, 1);
    if (res > 0 && *number + 1 == 1ULL << (7 * res))
        *number = EBML_UNKNOWN_LENGTH;
    return res;
}

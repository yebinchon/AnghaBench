
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ uint64_t ;
typedef int uint32_t ;
typedef scalar_t__ int64_t ;
typedef int MatroskaDemuxContext ;


 int matroska_ebmlnum_uint (int *,int *,int ,scalar_t__*) ;

__attribute__((used)) static int matroska_ebmlnum_sint(MatroskaDemuxContext *matroska,
                                 uint8_t *data, uint32_t size, int64_t *num)
{
    uint64_t unum;
    int res;


    if ((res = matroska_ebmlnum_uint(matroska, data, size, &unum)) < 0)
        return res;


    *num = unum - ((1LL << (7 * res - 1)) - 1);

    return res;
}

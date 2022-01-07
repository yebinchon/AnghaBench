
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ int64_t ;
typedef int GetByteContext ;


 scalar_t__ AVERROR_INVALIDDATA ;
 scalar_t__ UINT_MAX ;
 scalar_t__ bytestream2_get_levarint (int *) ;

__attribute__((used)) static int64_t decode_len(GetByteContext *gb)
{
    int64_t len = bytestream2_get_levarint(gb);

    if (len < 0 || len > UINT_MAX)
        return AVERROR_INVALIDDATA;

    return len;
}

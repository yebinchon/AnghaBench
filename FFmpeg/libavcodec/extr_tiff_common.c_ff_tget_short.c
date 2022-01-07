
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GetByteContext ;


 int bytestream2_get_be16 (int *) ;
 int bytestream2_get_le16 (int *) ;

unsigned ff_tget_short(GetByteContext *gb, int le)
{
    return le ? bytestream2_get_le16(gb) : bytestream2_get_be16(gb);
}

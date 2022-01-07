
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GetByteContext ;





 int UINT_MAX ;
 int bytestream2_get_byte (int *) ;
 int ff_tget_long (int *,int) ;
 int ff_tget_short (int *,int) ;

unsigned ff_tget(GetByteContext *gb, int type, int le)
{
    switch (type) {
    case 130: return bytestream2_get_byte(gb);
    case 128: return ff_tget_short(gb, le);
    case 129: return ff_tget_long(gb, le);
    default: return UINT_MAX;
    }
}

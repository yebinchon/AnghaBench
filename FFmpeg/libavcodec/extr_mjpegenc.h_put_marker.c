
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum JpegMarker { ____Placeholder_JpegMarker } JpegMarker ;
typedef int PutBitContext ;


 int put_bits (int *,int,int) ;

__attribute__((used)) static inline void put_marker(PutBitContext *p, enum JpegMarker code)
{
    put_bits(p, 8, 0xff);
    put_bits(p, 8, code);
}

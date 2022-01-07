
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int GetBitContext ;
typedef int AVFrame ;


 int dx2_decode_slice_5x5 (int *,int *,int,int,int **,int ) ;

__attribute__((used)) static int dx2_decode_slice_555(GetBitContext *gb, AVFrame *frame,
                                int line, int left, uint8_t lru[3][8])
{
    return dx2_decode_slice_5x5(gb, frame, line, left, lru, 0);
}

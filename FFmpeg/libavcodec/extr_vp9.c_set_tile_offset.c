
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FFMIN (int,int) ;

__attribute__((used)) static void set_tile_offset(int *start, int *end, int idx, int log2_n, int n)
{
    int sb_start = ( idx * n) >> log2_n;
    int sb_end = ((idx + 1) * n) >> log2_n;
    *start = FFMIN(sb_start, n) << 3;
    *end = FFMIN(sb_end, n) << 3;
}

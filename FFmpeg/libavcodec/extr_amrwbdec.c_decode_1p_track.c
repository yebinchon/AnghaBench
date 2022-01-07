
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ BIT_POS (int,int) ;
 int BIT_STR (int,int ,int) ;

__attribute__((used)) static inline void decode_1p_track(int *out, int code, int m, int off)
{
    int pos = BIT_STR(code, 0, m) + off;

    out[0] = BIT_POS(code, m) ? -pos : pos;
}

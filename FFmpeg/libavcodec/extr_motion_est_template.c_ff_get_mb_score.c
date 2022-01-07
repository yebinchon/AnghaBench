
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int MpegEncContext ;


 int get_mb_score (int *,int,int,int,int,int,int,int) ;

int ff_get_mb_score(MpegEncContext *s, int mx, int my, int src_index,
                    int ref_index, int size, int h, int add_rate)
{
    return get_mb_score(s, mx, my, src_index, ref_index, size, h, add_rate);
}

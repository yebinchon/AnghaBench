
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FFMIN (int,int ) ;
 int av_log2 (int) ;

__attribute__((used)) static int get_max_p_order(int max_porder, int n, int order)
{
    int porder = FFMIN(max_porder, av_log2(n^(n-1)));
    if (order > 0)
        porder = FFMIN(porder, av_log2(n/order));
    return porder;
}

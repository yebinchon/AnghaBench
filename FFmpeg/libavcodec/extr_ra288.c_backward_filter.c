
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* fdsp; } ;
struct TYPE_5__ {int (* vector_fmul ) (float*,float*,float const*,int ) ;} ;
typedef TYPE_2__ RA288Context ;


 int FFALIGN (int,int) ;
 int MAX_BACKWARD_FILTER_ORDER ;
 int compute_lpc_coefs (float*,int,float*,int ,int,int) ;
 int do_hybrid_window (TYPE_2__*,int,int,int,float*,float*,float*,float const*) ;
 int memmove (float*,float*,int) ;
 int stub1 (float*,float*,float const*,int ) ;

__attribute__((used)) static void backward_filter(RA288Context *ractx,
                            float *hist, float *rec, const float *window,
                            float *lpc, const float *tab,
                            int order, int n, int non_rec, int move_size)
{
    float temp[MAX_BACKWARD_FILTER_ORDER+1];

    do_hybrid_window(ractx, order, n, non_rec, temp, hist, rec, window);

    if (!compute_lpc_coefs(temp, order, lpc, 0, 1, 1))
        ractx->fdsp->vector_fmul(lpc, lpc, tab, FFALIGN(order, 16));

    memmove(hist, hist + n, move_size*sizeof(*hist));
}

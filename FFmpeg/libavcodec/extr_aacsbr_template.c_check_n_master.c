
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int AVCodecContext ;


 int AV_LOG_ERROR ;
 int av_log (int *,int ,char*,int) ;

__attribute__((used)) static int check_n_master(AVCodecContext *avctx, int n_master, int bs_xover_band)
{

    if (n_master <= 0) {
        av_log(avctx, AV_LOG_ERROR, "Invalid n_master: %d\n", n_master);
        return -1;
    }
    if (bs_xover_band >= n_master) {
        av_log(avctx, AV_LOG_ERROR,
               "Invalid bitstream, crossover band index beyond array bounds: %d\n",
               bs_xover_band);
        return -1;
    }
    return 0;
}

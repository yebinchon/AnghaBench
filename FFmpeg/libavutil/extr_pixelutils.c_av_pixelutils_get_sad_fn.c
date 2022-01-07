
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sad ;
typedef int * av_pixelutils_sad_fn ;


 int AV_LOG_ERROR ;
 int FF_ARRAY_ELEMS (int **) ;
 int av_log (void*,int ,char*) ;
 int ff_pixelutils_sad_init_x86 (int **,int) ;
 int memcpy (int **,int **,int) ;
 int ** sad_c ;

av_pixelutils_sad_fn av_pixelutils_get_sad_fn(int w_bits, int h_bits, int aligned, void *log_ctx)
{

    av_log(log_ctx, AV_LOG_ERROR, "pixelutils support is required "
           "but libavutil is not compiled with it\n");
    return ((void*)0);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int AVCodecContext ;


 int decompress_texture_thread_internal (int *,void*,int,int,int) ;

__attribute__((used)) static int decompress_texture2_thread(AVCodecContext *avctx, void *arg,
                                      int slice, int thread_nb)
{
    return decompress_texture_thread_internal(avctx, arg, slice, thread_nb, 1);
}

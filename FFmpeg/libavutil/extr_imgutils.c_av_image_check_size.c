
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AV_PIX_FMT_NONE ;
 int INT64_MAX ;
 int av_image_check_size2 (unsigned int,unsigned int,int ,int ,int,void*) ;

int av_image_check_size(unsigned int w, unsigned int h, int log_offset, void *log_ctx)
{
    return av_image_check_size2(w, h, INT64_MAX, AV_PIX_FMT_NONE, log_offset, log_ctx);
}

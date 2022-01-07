
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct representation {int cur_timestamp; int init_sec_data_len; int init_sec_buf_size; int init_sec_buf; int ctx; } ;


 int AVERROR (int ) ;
 int AV_LOG_WARNING ;
 int ENOMEM ;
 int av_log (int ,int ,char*) ;
 int av_mallocz (int ) ;
 int memcpy (int ,int ,int ) ;

__attribute__((used)) static int copy_init_section(struct representation *rep_dest, struct representation *rep_src)
{
    rep_dest->init_sec_buf = av_mallocz(rep_src->init_sec_buf_size);
    if (!rep_dest->init_sec_buf) {
        av_log(rep_dest->ctx, AV_LOG_WARNING, "Cannot alloc memory for init_sec_buf\n");
        return AVERROR(ENOMEM);
    }
    memcpy(rep_dest->init_sec_buf, rep_src->init_sec_buf, rep_src->init_sec_data_len);
    rep_dest->init_sec_buf_size = rep_src->init_sec_buf_size;
    rep_dest->init_sec_data_len = rep_src->init_sec_data_len;
    rep_dest->cur_timestamp = rep_src->cur_timestamp;

    return 0;
}

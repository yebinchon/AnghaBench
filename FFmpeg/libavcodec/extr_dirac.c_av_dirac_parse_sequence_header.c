
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int AVDiracSeqHeader ;


 int AVERROR (int ) ;
 int ENOSYS ;

int av_dirac_parse_sequence_header(AVDiracSeqHeader **pdsh,
                                   const uint8_t *buf, size_t buf_size,
                                   void *log_ctx)
{
    return AVERROR(ENOSYS);
}

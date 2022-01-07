
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int nb_bitstream_filters; int index; int file_index; int * bsf_ctx; } ;
typedef TYPE_1__ OutputStream ;
typedef int OutputFile ;
typedef int AVPacket ;


 int AVERROR (int ) ;
 int AVERROR_EOF ;
 int AV_LOG_ERROR ;
 int EAGAIN ;
 int av_bsf_receive_packet (int ,int *) ;
 int av_bsf_send_packet (int ,int *) ;
 int av_log (int *,int ,char*,int ,int ) ;
 scalar_t__ exit_on_error ;
 int exit_program (int) ;
 int write_packet (int *,int *,TYPE_1__*,int ) ;

__attribute__((used)) static void output_packet(OutputFile *of, AVPacket *pkt,
                          OutputStream *ost, int eof)
{
    int ret = 0;


    if (ost->nb_bitstream_filters) {
        int idx;

        ret = av_bsf_send_packet(ost->bsf_ctx[0], eof ? ((void*)0) : pkt);
        if (ret < 0)
            goto finish;

        eof = 0;
        idx = 1;
        while (idx) {

            ret = av_bsf_receive_packet(ost->bsf_ctx[idx - 1], pkt);
            if (ret == AVERROR(EAGAIN)) {
                ret = 0;
                idx--;
                continue;
            } else if (ret == AVERROR_EOF) {
                eof = 1;
            } else if (ret < 0)
                goto finish;


            if (idx < ost->nb_bitstream_filters) {
                ret = av_bsf_send_packet(ost->bsf_ctx[idx], eof ? ((void*)0) : pkt);
                if (ret < 0)
                    goto finish;
                idx++;
                eof = 0;
            } else if (eof)
                goto finish;
            else
                write_packet(of, pkt, ost, 0);
        }
    } else if (!eof)
        write_packet(of, pkt, ost, 0);

finish:
    if (ret < 0 && ret != AVERROR_EOF) {
        av_log(((void*)0), AV_LOG_ERROR, "Error applying bitstream filters to an output "
               "packet for stream #%d:%d.\n", ost->file_index, ost->index);
        if(exit_on_error)
            exit_program(1);
    }
}

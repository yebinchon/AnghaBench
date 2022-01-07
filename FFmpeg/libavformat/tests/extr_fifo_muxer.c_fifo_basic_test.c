
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FailingMuxerPacketData ;
typedef int AVPacket ;
typedef int AVFormatContext ;
typedef int AVDictionary ;


 char* av_err2str (int) ;
 int av_init_packet (int *) ;
 int av_packet_unref (int *) ;
 int av_write_frame (int *,int *) ;
 int av_write_trailer (int *) ;
 int avformat_write_header (int *,int **) ;
 int fprintf (int ,char*,char*) ;
 int prepare_packet (int *,int const*,int) ;
 int stderr ;

__attribute__((used)) static int fifo_basic_test(AVFormatContext *oc, AVDictionary **opts,
                             const FailingMuxerPacketData *pkt_data)
{
    int ret = 0, i;
    AVPacket pkt;

    av_init_packet(&pkt);


    ret = avformat_write_header(oc, opts);
    if (ret) {
        fprintf(stderr, "Unexpected write_header failure: %s\n",
                av_err2str(ret));
        goto fail;
    }

    for (i = 0; i < 15; i++ ) {
        ret = prepare_packet(&pkt, pkt_data, i);
        if (ret < 0) {
            fprintf(stderr, "Failed to prepare test packet: %s\n",
                    av_err2str(ret));
            goto write_trailer_and_fail;
        }
        ret = av_write_frame(oc, &pkt);
        av_packet_unref(&pkt);
        if (ret < 0) {
            fprintf(stderr, "Unexpected write_frame error: %s\n",
                    av_err2str(ret));
            goto write_trailer_and_fail;
        }
    }

    ret = av_write_frame(oc, ((void*)0));
    if (ret < 0) {
        fprintf(stderr, "Unexpected write_frame error during flushing: %s\n",
                av_err2str(ret));
        goto write_trailer_and_fail;
    }

    ret = av_write_trailer(oc);
    if (ret < 0) {
        fprintf(stderr, "Unexpected write_trailer error during flushing: %s\n",
                av_err2str(ret));
        goto fail;
    }

    return ret;
write_trailer_and_fail:
    av_write_trailer(oc);
fail:
    return ret;
}

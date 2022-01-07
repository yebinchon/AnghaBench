
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int data; } ;
typedef TYPE_1__ AVPacket ;


 int AV_LOG_ERROR ;
 int INT_MAX ;
 scalar_t__ av_grow_packet (TYPE_1__*,int) ;
 int av_log (int *,int ,char*) ;
 scalar_t__ av_new_packet (TYPE_1__*,int) ;
 TYPE_1__* av_packet_clone (TYPE_1__*) ;
 int av_packet_free (TYPE_1__**) ;
 scalar_t__ av_packet_from_data (TYPE_1__*,int ,int) ;
 int av_packet_unref (TYPE_1__*) ;
 scalar_t__ initializations (TYPE_1__*) ;
 int printf (char*) ;

int main(void)
{
    AVPacket avpkt;
    AVPacket *avpkt_clone = ((void*)0);
    int ret = 0;

    if(initializations(&avpkt) < 0){
        printf("failed to initialize variables\n");
        return 1;
    }

    avpkt_clone = av_packet_clone(&avpkt);

    if(!avpkt_clone) {
        av_log(((void*)0), AV_LOG_ERROR,"av_packet_clone failed to clone AVPacket\n");
        return 1;
    }

    if(av_grow_packet(avpkt_clone, 20) < 0){
        av_log(((void*)0), AV_LOG_ERROR, "av_grow_packet failed\n");
        return 1;
    }
    if(av_grow_packet(avpkt_clone, INT_MAX) == 0){
        printf( "av_grow_packet failed to return error "
                "when \"grow_by\" parameter is too large.\n" );
        ret = 1;
    }

    if(av_new_packet(avpkt_clone, INT_MAX) == 0){
        printf( "av_new_packet failed to return error "
                "when \"size\" parameter is too large.\n" );
        ret = 1;
    }

    if(av_packet_from_data(avpkt_clone, avpkt_clone->data, INT_MAX) == 0){
        printf("av_packet_from_data failed to return error "
                "when \"size\" parameter is too large.\n" );
        ret = 1;
    }

    av_packet_free(&avpkt_clone);
    av_packet_unref(&avpkt);


    return ret;
}

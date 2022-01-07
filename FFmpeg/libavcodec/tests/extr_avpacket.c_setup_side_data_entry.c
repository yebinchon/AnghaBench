
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int AVPacket ;


 int AVERROR (int ) ;
 int AV_PKT_DATA_NEW_EXTRADATA ;
 int ENOMEM ;
 char* av_err2str (int) ;
 int * av_malloc (int) ;
 int av_packet_add_side_data (int *,int ,int *,int) ;
 int * av_packet_side_data_name (int ) ;
 int exit (int) ;
 int fprintf (int ,char*,char*) ;
 int memcpy (int *,int const*,int) ;
 int stderr ;
 int strlen (int const*) ;

__attribute__((used)) static int setup_side_data_entry(AVPacket* avpkt)
{
    const uint8_t *data_name = ((void*)0);
    int ret = 0, bytes;
    uint8_t *extra_data = ((void*)0);



    data_name = av_packet_side_data_name(AV_PKT_DATA_NEW_EXTRADATA);


    bytes = strlen(data_name);

    if(!(extra_data = av_malloc(bytes))){
        ret = AVERROR(ENOMEM);
        fprintf(stderr, "Error occurred: %s\n", av_err2str(ret));
        exit(1);
    }

    memcpy(extra_data, data_name, bytes);


    ret = av_packet_add_side_data(avpkt, AV_PKT_DATA_NEW_EXTRADATA,
                                        extra_data, bytes);
    if(ret < 0){
        fprintf(stderr,
                "Error occurred in av_packet_add_side_data: %s\n",
                av_err2str(ret));
    }

    return ret;
}

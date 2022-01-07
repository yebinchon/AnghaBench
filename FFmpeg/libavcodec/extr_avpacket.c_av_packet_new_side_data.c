
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef enum AVPacketSideDataType { ____Placeholder_AVPacketSideDataType } AVPacketSideDataType ;
typedef int AVPacket ;


 unsigned int AV_INPUT_BUFFER_PADDING_SIZE ;
 unsigned int INT_MAX ;
 int av_freep (int **) ;
 int * av_mallocz (unsigned int) ;
 int av_packet_add_side_data (int *,int,int *,int) ;

uint8_t *av_packet_new_side_data(AVPacket *pkt, enum AVPacketSideDataType type,
                                 int size)
{
    int ret;
    uint8_t *data;

    if ((unsigned)size > INT_MAX - AV_INPUT_BUFFER_PADDING_SIZE)
        return ((void*)0);
    data = av_mallocz(size + AV_INPUT_BUFFER_PADDING_SIZE);
    if (!data)
        return ((void*)0);

    ret = av_packet_add_side_data(pkt, type, data, size);
    if (ret < 0) {
        av_freep(&data);
        return ((void*)0);
    }

    return data;
}

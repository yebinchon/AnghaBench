
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef enum AVPacketSideDataType { ____Placeholder_AVPacketSideDataType } AVPacketSideDataType ;
typedef int AVStream ;


 int av_freep (int **) ;
 int * av_malloc (int) ;
 int av_stream_add_side_data (int *,int,int *,int) ;

uint8_t *av_stream_new_side_data(AVStream *st, enum AVPacketSideDataType type,
                                 int size)
{
    int ret;
    uint8_t *data = av_malloc(size);

    if (!data)
        return ((void*)0);

    ret = av_stream_add_side_data(st, type, data, size);
    if (ret < 0) {
        av_freep(&data);
        return ((void*)0);
    }

    return data;
}

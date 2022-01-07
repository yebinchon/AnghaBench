
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {int flv_size; int duration; int * flv_data; } ;
typedef TYPE_1__ RTMPContext ;


 int AMF_DATA_TYPE_MIXEDARRAY ;
 int AMF_DATA_TYPE_NUMBER ;
 int AMF_DATA_TYPE_STRING ;
 int AMF_END_OF_OBJECT ;
 int AVERROR (int ) ;
 int ENOMEM ;
 int FLV_TAG_TYPE_META ;
 int RTMP_HEADER ;
 int av_double2int (int ) ;
 int av_freep (int **) ;
 int * av_malloc (int) ;
 int bytestream_put_be16 (int **,int) ;
 int bytestream_put_be24 (int **,int) ;
 int bytestream_put_be32 (int **,int) ;
 int bytestream_put_be64 (int **,int ) ;
 int bytestream_put_buffer (int **,char*,int) ;
 int bytestream_put_byte (int **,int ) ;
 int memcpy (int *,int *,int) ;

__attribute__((used)) static int inject_fake_duration_metadata(RTMPContext *rt)
{




    uint8_t* p;

    uint8_t* old_flv_data = rt->flv_data;

    if (!(rt->flv_data = av_malloc(rt->flv_size + 55))) {
        rt->flv_data = old_flv_data;
        return AVERROR(ENOMEM);
    }


    memcpy(rt->flv_data, old_flv_data, 13);

    memcpy(rt->flv_data + 13 + 55, old_flv_data + 13, rt->flv_size - 13);

    rt->flv_size += 55;

    av_freep(&old_flv_data);

    p = rt->flv_data + 13;
    bytestream_put_byte(&p, FLV_TAG_TYPE_META);
    bytestream_put_be24(&p, 40);
    bytestream_put_be24(&p, 0);
    bytestream_put_be32(&p, 0);


    bytestream_put_byte(&p, AMF_DATA_TYPE_STRING);

    bytestream_put_be16(&p, 10);
    bytestream_put_buffer(&p, "onMetaData", 10);


    bytestream_put_byte(&p, AMF_DATA_TYPE_MIXEDARRAY);
    bytestream_put_be32(&p, 1);


    bytestream_put_be16(&p, 8);
    bytestream_put_buffer(&p, "duration", 8);
    bytestream_put_byte(&p, AMF_DATA_TYPE_NUMBER);
    bytestream_put_be64(&p, av_double2int(rt->duration));


    bytestream_put_be16(&p, 0);
    bytestream_put_byte(&p, AMF_END_OF_OBJECT);
    bytestream_put_be32(&p, 40 + RTMP_HEADER);

    return 0;
}

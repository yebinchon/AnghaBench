
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


typedef char uint8_t ;
typedef int statusmsg ;
typedef int commandbuffer ;
struct TYPE_16__ {TYPE_3__* priv_data; } ;
typedef TYPE_1__ URLContext ;
struct TYPE_19__ {int buffer; int buffer_end; } ;
struct TYPE_18__ {int received_metadata; int has_video; int has_audio; } ;
struct TYPE_17__ {int data; int size; } ;
typedef TYPE_2__ RTMPPacket ;
typedef TYPE_3__ RTMPContext ;
typedef TYPE_4__ GetByteContext ;


 scalar_t__ AMF_DATA_TYPE_MIXEDARRAY ;
 scalar_t__ AMF_END_OF_OBJECT ;
 int AVERROR_INVALIDDATA ;
 int append_flv_data (TYPE_3__*,TYPE_2__*,int) ;
 scalar_t__ bytestream2_get_be24 (TYPE_4__*) ;
 scalar_t__ bytestream2_get_byte (TYPE_4__*) ;
 int bytestream2_get_bytes_left (TYPE_4__*) ;
 int bytestream2_init (TYPE_4__*,int,int ) ;
 int bytestream2_skip (TYPE_4__*,int) ;
 scalar_t__ ff_amf_get_string (TYPE_4__*,char*,int,int*) ;
 int ff_amf_read_string (TYPE_4__*,char*,int,int*) ;
 int ff_amf_tag_size (int,int ) ;
 int strcmp (char*,char*) ;

__attribute__((used)) static int handle_notify(URLContext *s, RTMPPacket *pkt)
{
    RTMPContext *rt = s->priv_data;
    uint8_t commandbuffer[64];
    char statusmsg[128];
    int stringlen, ret, skip = 0;
    GetByteContext gbc;

    bytestream2_init(&gbc, pkt->data, pkt->size);
    if (ff_amf_read_string(&gbc, commandbuffer, sizeof(commandbuffer),
                           &stringlen))
        return AVERROR_INVALIDDATA;

    if (!strcmp(commandbuffer, "onMetaData")) {

        if (bytestream2_get_byte(&gbc) == AMF_DATA_TYPE_MIXEDARRAY) {


            rt->received_metadata = 1;

            bytestream2_skip(&gbc, 4);
            while (bytestream2_get_bytes_left(&gbc) > 3) {
                if (ff_amf_get_string(&gbc, statusmsg, sizeof(statusmsg),
                                      &stringlen))
                    return AVERROR_INVALIDDATA;

                stringlen = ff_amf_tag_size(gbc.buffer, gbc.buffer_end);
                if (stringlen < 0)
                    return AVERROR_INVALIDDATA;
                bytestream2_skip(&gbc, stringlen);



                if (!strcmp(statusmsg, "videocodecid")) {
                    rt->has_video = 1;
                }
                if (!strcmp(statusmsg, "audiocodecid")) {
                    rt->has_audio = 1;
                }
            }
            if (bytestream2_get_be24(&gbc) != AMF_END_OF_OBJECT)
                return AVERROR_INVALIDDATA;
        }
    }


    if (!strcmp(commandbuffer, "@setDataFrame")) {
        skip = gbc.buffer - pkt->data;
        ret = ff_amf_read_string(&gbc, statusmsg,
                                 sizeof(statusmsg), &stringlen);
        if (ret < 0)
            return AVERROR_INVALIDDATA;
    }

    return append_flv_data(rt, pkt, skip);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint8_t ;
typedef int URLContext ;
struct TYPE_9__ {double nb_invokes; char* flashver; char* swfurl; char* swfverify; char* pageurl; char* conn; scalar_t__ is_input; int auth_params; int tcurl; int app; } ;
struct TYPE_8__ {int size; int * data; } ;
typedef TYPE_1__ RTMPPacket ;
typedef TYPE_2__ RTMPContext ;


 scalar_t__ APP_MAX_LENGTH ;
 int RTMP_PT_INVOKE ;
 int RTMP_SYSTEM_CHANNEL ;
 int ff_amf_write_bool (int **,int ) ;
 int ff_amf_write_field_name (int **,char*) ;
 int ff_amf_write_number (int **,double) ;
 int ff_amf_write_object_end (int **) ;
 int ff_amf_write_object_start (int **) ;
 int ff_amf_write_string (int **,char*) ;
 int ff_amf_write_string2 (int **,int ,int ) ;
 int ff_rtmp_packet_create (TYPE_1__*,int ,int ,int ,scalar_t__) ;
 int ff_rtmp_packet_destroy (TYPE_1__*) ;
 int rtmp_send_packet (TYPE_2__*,TYPE_1__*,int) ;
 int rtmp_write_amf_data (int *,char*,int **) ;
 char* strchr (char*,char) ;
 int strspn (char*,char*) ;

__attribute__((used)) static int gen_connect(URLContext *s, RTMPContext *rt)
{
    RTMPPacket pkt;
    uint8_t *p;
    int ret;

    if ((ret = ff_rtmp_packet_create(&pkt, RTMP_SYSTEM_CHANNEL, RTMP_PT_INVOKE,
                                     0, 4096 + APP_MAX_LENGTH)) < 0)
        return ret;

    p = pkt.data;

    ff_amf_write_string(&p, "connect");
    ff_amf_write_number(&p, ++rt->nb_invokes);
    ff_amf_write_object_start(&p);
    ff_amf_write_field_name(&p, "app");
    ff_amf_write_string2(&p, rt->app, rt->auth_params);

    if (!rt->is_input) {
        ff_amf_write_field_name(&p, "type");
        ff_amf_write_string(&p, "nonprivate");
    }
    ff_amf_write_field_name(&p, "flashVer");
    ff_amf_write_string(&p, rt->flashver);

    if (rt->swfurl || rt->swfverify) {
        ff_amf_write_field_name(&p, "swfUrl");
        if (rt->swfurl)
            ff_amf_write_string(&p, rt->swfurl);
        else
            ff_amf_write_string(&p, rt->swfverify);
    }

    ff_amf_write_field_name(&p, "tcUrl");
    ff_amf_write_string2(&p, rt->tcurl, rt->auth_params);
    if (rt->is_input) {
        ff_amf_write_field_name(&p, "fpad");
        ff_amf_write_bool(&p, 0);
        ff_amf_write_field_name(&p, "capabilities");
        ff_amf_write_number(&p, 15.0);




        ff_amf_write_field_name(&p, "audioCodecs");
        ff_amf_write_number(&p, 4071.0);
        ff_amf_write_field_name(&p, "videoCodecs");
        ff_amf_write_number(&p, 252.0);
        ff_amf_write_field_name(&p, "videoFunction");
        ff_amf_write_number(&p, 1.0);

        if (rt->pageurl) {
            ff_amf_write_field_name(&p, "pageUrl");
            ff_amf_write_string(&p, rt->pageurl);
        }
    }
    ff_amf_write_object_end(&p);

    if (rt->conn) {
        char *param = rt->conn;


        while (param) {
            char *sep;
            param += strspn(param, " ");
            if (!*param)
                break;
            sep = strchr(param, ' ');
            if (sep)
                *sep = '\0';
            if ((ret = rtmp_write_amf_data(s, param, &p)) < 0) {

                ff_rtmp_packet_destroy(&pkt);
                return ret;
            }

            if (sep)
                param = sep + 1;
            else
                break;
        }
    }

    pkt.size = p - pkt.data;

    return rtmp_send_packet(rt, &pkt, 1);
}

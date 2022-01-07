
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int strbuffer ;
struct TYPE_3__ {int size; int data; } ;
typedef TYPE_1__ RTMPPacket ;
typedef int GetByteContext ;


 int AVERROR_INVALIDDATA ;
 int bytestream2_init (int *,int ,int ) ;
 scalar_t__ ff_amf_read_null (int *) ;
 scalar_t__ ff_amf_read_number (int *,double*) ;
 scalar_t__ ff_amf_read_string (int *,int *,int,int*) ;
 scalar_t__ strcmp (int *,char*) ;

__attribute__((used)) static int read_number_result(RTMPPacket *pkt, double *number)
{

    uint8_t strbuffer[8];
    int stringlen;
    double numbuffer;
    GetByteContext gbc;

    bytestream2_init(&gbc, pkt->data, pkt->size);


    if (ff_amf_read_string(&gbc, strbuffer, sizeof(strbuffer), &stringlen))
        return AVERROR_INVALIDDATA;
    if (strcmp(strbuffer, "_result"))
        return AVERROR_INVALIDDATA;

    if (ff_amf_read_number(&gbc, &numbuffer))
        return AVERROR_INVALIDDATA;

    if (ff_amf_read_null(&gbc))
        return AVERROR_INVALIDDATA;

    if (ff_amf_read_number(&gbc, &numbuffer))
        return AVERROR_INVALIDDATA;
    else
        *number = numbuffer;

    return 0;
}

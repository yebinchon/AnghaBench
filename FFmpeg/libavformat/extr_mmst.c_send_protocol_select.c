
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int data_string ;
struct TYPE_9__ {int write_out_ptr; } ;
struct TYPE_8__ {TYPE_2__ mms; } ;
typedef TYPE_1__ MMSTContext ;
typedef TYPE_2__ MMSContext ;


 int CS_PKT_PROTOCOL_SELECT ;
 int LOCAL_ADDRESS ;
 int LOCAL_PORT ;
 int bytestream_put_le32 (int *,int) ;
 int insert_command_prefixes (TYPE_2__*,int ,int) ;
 int mms_put_utf16 (TYPE_2__*,char*) ;
 int send_command_packet (TYPE_1__*) ;
 int snprintf (char*,int,char*,int,int,int,int,char*,int) ;
 int start_command_packet (TYPE_1__*,int ) ;

__attribute__((used)) static int send_protocol_select(MMSTContext *mmst)
{
    int ret;
    char data_string[256];
    MMSContext *mms = &mmst->mms;

    start_command_packet(mmst, CS_PKT_PROTOCOL_SELECT);
    insert_command_prefixes(mms, 0, 0xffffffff);
    bytestream_put_le32(&mms->write_out_ptr, 0);
    bytestream_put_le32(&mms->write_out_ptr, 0x00989680);
    bytestream_put_le32(&mms->write_out_ptr, 2);
    snprintf(data_string, sizeof(data_string), "\\\\%d.%d.%d.%d\\%s\\%d",
            (LOCAL_ADDRESS>>24)&0xff,
            (LOCAL_ADDRESS>>16)&0xff,
            (LOCAL_ADDRESS>>8)&0xff,
            LOCAL_ADDRESS&0xff,
            "TCP",
            LOCAL_PORT);

    if ((ret = mms_put_utf16(mms, data_string)) < 0)
        return ret;
    return send_command_packet(mmst);
}

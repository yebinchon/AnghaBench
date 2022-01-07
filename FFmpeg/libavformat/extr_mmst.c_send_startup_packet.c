
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int data_string ;
struct TYPE_9__ {int write_out_ptr; } ;
struct TYPE_8__ {char* host; TYPE_2__ mms; } ;
typedef TYPE_1__ MMSTContext ;
typedef TYPE_2__ MMSContext ;


 int CS_PKT_INITIAL ;
 int bytestream_put_le32 (int *,int) ;
 int insert_command_prefixes (TYPE_2__*,int ,int) ;
 int mms_put_utf16 (TYPE_2__*,char*) ;
 int send_command_packet (TYPE_1__*) ;
 int snprintf (char*,int,char*,char*,char*) ;
 int start_command_packet (TYPE_1__*,int ) ;

__attribute__((used)) static int send_startup_packet(MMSTContext *mmst)
{
    char data_string[256];
    int ret;
    MMSContext *mms = &mmst->mms;




    snprintf(data_string, sizeof(data_string),
            "NSPlayer/7.0.0.1956; {%s}; Host: %s",
            "7E667F5D-A661-495E-A512-F55686DDA178", mmst->host);

    start_command_packet(mmst, CS_PKT_INITIAL);
    insert_command_prefixes(mms, 0, 0x0004000b);
    bytestream_put_le32(&mms->write_out_ptr, 0x0003001c);
    if ((ret = mms_put_utf16(mms, data_string)) < 0)
        return ret;
    return send_command_packet(mmst);
}

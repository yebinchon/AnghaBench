
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int stream_num; int write_out_ptr; TYPE_1__* streams; } ;
struct TYPE_8__ {TYPE_3__ mms; } ;
struct TYPE_7__ {int id; } ;
typedef TYPE_2__ MMSTContext ;
typedef TYPE_3__ MMSContext ;


 int CS_PKT_STREAM_ID_REQUEST ;
 int bytestream_put_le16 (int *,int) ;
 int bytestream_put_le32 (int *,int) ;
 int send_command_packet (TYPE_2__*) ;
 int start_command_packet (TYPE_2__*,int ) ;

__attribute__((used)) static int send_stream_selection_request(MMSTContext *mmst)
{
    int i;
    MMSContext *mms = &mmst->mms;

    start_command_packet(mmst, CS_PKT_STREAM_ID_REQUEST);
    bytestream_put_le32(&mms->write_out_ptr, mms->stream_num);
    for(i= 0; i<mms->stream_num; i++) {
        bytestream_put_le16(&mms->write_out_ptr, 0xffff);
        bytestream_put_le16(&mms->write_out_ptr, mms->streams[i].id);
        bytestream_put_le16(&mms->write_out_ptr, 0);
    }
    return send_command_packet(mmst);
}

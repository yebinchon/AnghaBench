
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int write_out_ptr; } ;
struct TYPE_7__ {TYPE_2__ mms; } ;
typedef TYPE_1__ MMSTContext ;
typedef TYPE_2__ MMSContext ;


 int CS_PKT_MEDIA_HEADER_REQUEST ;
 int bytestream_put_le32 (int *,int) ;
 int insert_command_prefixes (TYPE_2__*,int,int ) ;
 int send_command_packet (TYPE_1__*) ;
 int start_command_packet (TYPE_1__*,int ) ;

__attribute__((used)) static int send_media_header_request(MMSTContext *mmst)
{
    MMSContext *mms = &mmst->mms;
    start_command_packet(mmst, CS_PKT_MEDIA_HEADER_REQUEST);
    insert_command_prefixes(mms, 1, 0);
    bytestream_put_le32(&mms->write_out_ptr, 0);
    bytestream_put_le32(&mms->write_out_ptr, 0x00800000);
    bytestream_put_le32(&mms->write_out_ptr, 0xffffffff);
    bytestream_put_le32(&mms->write_out_ptr, 0);
    bytestream_put_le32(&mms->write_out_ptr, 0);
    bytestream_put_le32(&mms->write_out_ptr, 0);


    bytestream_put_le32(&mms->write_out_ptr, 0);
    bytestream_put_le32(&mms->write_out_ptr, 0x40AC2000);
    bytestream_put_le32(&mms->write_out_ptr, 2);
    bytestream_put_le32(&mms->write_out_ptr, 0);

    return send_command_packet(mmst);
}

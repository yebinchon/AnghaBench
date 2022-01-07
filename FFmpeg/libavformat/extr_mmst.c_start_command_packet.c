
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int write_out_ptr; int out_buffer; } ;
struct TYPE_4__ {int outgoing_packet_seq; TYPE_2__ mms; } ;
typedef TYPE_1__ MMSTContext ;
typedef TYPE_2__ MMSContext ;
typedef int MMSCSPacketType ;


 int MKTAG (char,char,char,char) ;
 int bytestream_put_le16 (int *,int) ;
 int bytestream_put_le32 (int *,int) ;
 int bytestream_put_le64 (int *,int ) ;

__attribute__((used)) static void start_command_packet(MMSTContext *mmst, MMSCSPacketType packet_type)
{
    MMSContext *mms = &mmst->mms;
    mms->write_out_ptr = mms->out_buffer;

    bytestream_put_le32(&mms->write_out_ptr, 1);
    bytestream_put_le32(&mms->write_out_ptr, 0xb00bface);
    bytestream_put_le32(&mms->write_out_ptr, 0);
    bytestream_put_le32(&mms->write_out_ptr, MKTAG('M','M','S',' '));
    bytestream_put_le32(&mms->write_out_ptr, 0);
    bytestream_put_le32(&mms->write_out_ptr, mmst->outgoing_packet_seq++);
    bytestream_put_le64(&mms->write_out_ptr, 0);
    bytestream_put_le32(&mms->write_out_ptr, 0);
    bytestream_put_le16(&mms->write_out_ptr, packet_type);
    bytestream_put_le16(&mms->write_out_ptr, 3);
}

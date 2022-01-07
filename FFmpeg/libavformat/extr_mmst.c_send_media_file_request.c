
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int write_out_ptr; } ;
struct TYPE_8__ {scalar_t__ path; TYPE_2__ mms; } ;
typedef TYPE_1__ MMSTContext ;
typedef TYPE_2__ MMSContext ;


 int CS_PKT_MEDIA_FILE_REQUEST ;
 int bytestream_put_le32 (int *,int ) ;
 int insert_command_prefixes (TYPE_2__*,int,int) ;
 int mms_put_utf16 (TYPE_2__*,scalar_t__) ;
 int send_command_packet (TYPE_1__*) ;
 int start_command_packet (TYPE_1__*,int ) ;

__attribute__((used)) static int send_media_file_request(MMSTContext *mmst)
{
    int ret;
    MMSContext *mms = &mmst->mms;
    start_command_packet(mmst, CS_PKT_MEDIA_FILE_REQUEST);
    insert_command_prefixes(mms, 1, 0xffffffff);
    bytestream_put_le32(&mms->write_out_ptr, 0);
    bytestream_put_le32(&mms->write_out_ptr, 0);
    if ((ret = mms_put_utf16(mms, mmst->path + 1)) < 0)
        return ret;

    return send_command_packet(mmst);
}

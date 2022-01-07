
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
typedef int uint16_t ;
struct TYPE_6__ {int cur_xid; int open_handle; int resp_code; } ;
struct TYPE_5__ {int cmd_code; int xid; } ;
typedef TYPE_1__ FILESERV_MSG_T ;


 int FILESERV_RESP_ERROR ;
 int VCHI_FLAGS_BLOCK_UNTIL_QUEUED ;
 int VCHI_MAX_MSG_SIZE ;
 TYPE_4__ vc_filesys_client ;
 scalar_t__ vchi_msg_queue (int ,TYPE_1__*,int,int ,int *) ;
 int vchi_writebuf_uint32 (int *,int) ;
 int vcos_verify (int) ;

__attribute__((used)) static int vchi_msg_stub_noblock(FILESERV_MSG_T* msg, uint16_t cmd_id, int msg_len)
{
   uint32_t i;

   if(!vcos_verify(msg_len <= VCHI_MAX_MSG_SIZE))
      return -1;


   vc_filesys_client.resp_code = FILESERV_RESP_ERROR;


   i = vc_filesys_client.cur_xid + 1;
   i &= 0x7fffffffUL;
   vc_filesys_client.cur_xid = i;


   vchi_writebuf_uint32( &(msg->xid), vc_filesys_client.cur_xid );


   vchi_writebuf_uint32( &(msg->cmd_code), cmd_id );


   msg_len += 8;


   return (int) vchi_msg_queue( vc_filesys_client.open_handle, msg, (uint32_t)msg_len, VCHI_FLAGS_BLOCK_UNTIL_QUEUED, ((void*)0) );
}

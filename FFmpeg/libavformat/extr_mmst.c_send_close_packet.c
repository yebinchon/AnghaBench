
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int mms; } ;
typedef TYPE_1__ MMSTContext ;


 int CS_PKT_STREAM_CLOSE ;
 int insert_command_prefixes (int *,int,int) ;
 int send_command_packet (TYPE_1__*) ;
 int start_command_packet (TYPE_1__*,int ) ;

__attribute__((used)) static int send_close_packet(MMSTContext *mmst)
{
    start_command_packet(mmst, CS_PKT_STREAM_CLOSE);
    insert_command_prefixes(&mmst->mms, 1, 1);

    return send_command_packet(mmst);
}

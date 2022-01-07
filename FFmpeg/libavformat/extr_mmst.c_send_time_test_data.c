
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int mms; } ;
typedef TYPE_1__ MMSTContext ;


 int CS_PKT_TIMING_DATA_REQUEST ;
 int insert_command_prefixes (int *,int,int) ;
 int send_command_packet (TYPE_1__*) ;
 int start_command_packet (TYPE_1__*,int ) ;

__attribute__((used)) static int send_time_test_data(MMSTContext *mmst)
{
    start_command_packet(mmst, CS_PKT_TIMING_DATA_REQUEST);
    insert_command_prefixes(&mmst->mms, 0x00f0f0f0, 0x0004000b);
    return send_command_packet(mmst);
}

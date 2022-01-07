
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BT_HDR ;


 int * current_fragment_packet ;

__attribute__((used)) static BT_HDR *fragment_get_current_packet(void)
{
    return current_fragment_packet;
}

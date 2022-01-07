
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UINT8 ;
typedef int UINT16 ;


 int MAX_L2CAP_LINKS ;
 int btsnd_hcic_host_num_xmitted_pkts (scalar_t__,int *,int *) ;
 scalar_t__ l2c_link_pkts_rcvd (int *,int *) ;

void btu_hcif_send_host_rdy_for_data(void)
{
    UINT16 num_pkts[MAX_L2CAP_LINKS + 4];
    UINT16 handles[MAX_L2CAP_LINKS + 4];
    UINT8 num_ents;


    num_ents = l2c_link_pkts_rcvd (num_pkts, handles);




    if (num_ents) {
        btsnd_hcic_host_num_xmitted_pkts (num_ents, handles, num_pkts);
    }
}

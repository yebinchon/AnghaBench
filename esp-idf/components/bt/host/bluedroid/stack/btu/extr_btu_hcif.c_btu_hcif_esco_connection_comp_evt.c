
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int bd_addr; int air_mode; int tx_pkt_len; int rx_pkt_len; int retrans_window; int tx_interval; int link_type; } ;
typedef TYPE_1__ tBTM_ESCO_DATA ;
typedef int UINT8 ;
typedef int UINT16 ;
typedef int BD_ADDR ;


 int BD_ADDR_LEN ;
 int STREAM_TO_BDADDR (int ,int *) ;
 int STREAM_TO_UINT16 (int ,int *) ;
 int STREAM_TO_UINT8 (int ,int *) ;
 int btm_sco_connected (int ,int ,int ,TYPE_1__*) ;
 int memcpy (int ,int ,int ) ;

__attribute__((used)) static void btu_hcif_esco_connection_comp_evt (UINT8 *p)
{

    tBTM_ESCO_DATA data;
    UINT16 handle;
    BD_ADDR bda;
    UINT8 status;

    STREAM_TO_UINT8 (status, p);
    STREAM_TO_UINT16 (handle, p);
    STREAM_TO_BDADDR (bda, p);

    STREAM_TO_UINT8 (data.link_type, p);
    STREAM_TO_UINT8 (data.tx_interval, p);
    STREAM_TO_UINT8 (data.retrans_window, p);
    STREAM_TO_UINT16 (data.rx_pkt_len, p);
    STREAM_TO_UINT16 (data.tx_pkt_len, p);
    STREAM_TO_UINT8 (data.air_mode, p);

    memcpy (data.bd_addr, bda, BD_ADDR_LEN);
    btm_sco_connected (status, bda, handle, &data);

}

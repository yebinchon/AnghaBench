
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT8 ;
typedef int UINT16 ;


 int STREAM_TO_UINT16 (int ,int *) ;
 int STREAM_TO_UINT8 (int ,int *) ;
 int btm_esco_proc_conn_chg (int ,int ,int ,int ,int ,int ) ;

__attribute__((used)) static void btu_hcif_esco_connection_chg_evt (UINT8 *p)
{

    UINT16 handle;
    UINT16 tx_pkt_len;
    UINT16 rx_pkt_len;
    UINT8 status;
    UINT8 tx_interval;
    UINT8 retrans_window;

    STREAM_TO_UINT8 (status, p);
    STREAM_TO_UINT16 (handle, p);

    STREAM_TO_UINT8 (tx_interval, p);
    STREAM_TO_UINT8 (retrans_window, p);
    STREAM_TO_UINT16 (rx_pkt_len, p);
    STREAM_TO_UINT16 (tx_pkt_len, p);

    btm_esco_proc_conn_chg (status, handle, tx_interval, retrans_window,
                            rx_pkt_len, tx_pkt_len);

}

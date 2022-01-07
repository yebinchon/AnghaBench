
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UINT8 ;
typedef int DEV_CLASS ;
typedef int BD_ADDR ;


 scalar_t__ HCI_LINK_TYPE_ACL ;
 int STREAM_TO_BDADDR (int ,scalar_t__*) ;
 int STREAM_TO_DEVCLASS (int ,scalar_t__*) ;
 int STREAM_TO_UINT8 (scalar_t__,scalar_t__*) ;
 int btm_sco_conn_req (int ,int ,scalar_t__) ;
 int btm_sec_conn_req (int ,int ) ;

__attribute__((used)) static void btu_hcif_connection_request_evt (UINT8 *p)
{
    BD_ADDR bda;
    DEV_CLASS dc;
    UINT8 link_type;

    STREAM_TO_BDADDR (bda, p);
    STREAM_TO_DEVCLASS (dc, p);
    STREAM_TO_UINT8 (link_type, p);


    if (link_type == HCI_LINK_TYPE_ACL) {

        btm_sec_conn_req (bda, dc);

    }

    else {
        btm_sco_conn_req (bda, dc, link_type);
    }

}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * tGATTS_REQ_TYPE ;
typedef int tGATTS_DATA ;
typedef int * UINT32 ;
typedef int * UINT16 ;


 int UNUSED (int *) ;

__attribute__((used)) static void bta_gattc_req_cback (UINT16 conn_id, UINT32 trans_id, tGATTS_REQ_TYPE type, tGATTS_DATA *p_data)
{




    UNUSED (conn_id);
    UNUSED (trans_id) ;
    UNUSED (type);
    UNUSED (p_data);
}

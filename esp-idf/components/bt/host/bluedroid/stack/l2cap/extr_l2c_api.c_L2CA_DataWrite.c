
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int UINT8 ;
typedef int UINT16 ;
struct TYPE_4__ {int len; } ;
typedef TYPE_1__ BT_HDR ;


 int L2CAP_FLUSHABLE_CH_BASED ;
 int L2CAP_TRACE_API (char*,int ,int ) ;
 int l2c_data_write (int ,TYPE_1__*,int ) ;

UINT8 L2CA_DataWrite (UINT16 cid, BT_HDR *p_data)
{
    L2CAP_TRACE_API ("L2CA_DataWrite()  CID: 0x%04x  Len: %d", cid, p_data->len);
    return l2c_data_write (cid, p_data, L2CAP_FLUSHABLE_CH_BASED);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int UINT8 ;
typedef int UINT16 ;
struct TYPE_3__ {int offset; int len; } ;
typedef TYPE_1__ BT_HDR ;


 int L2CAP_FCR_INIT_CRC ;
 int l2c_fcr_updcrc (int ,int *,int ) ;

__attribute__((used)) static UINT16 l2c_fcr_tx_get_fcs (BT_HDR *p_buf)
{
    UINT8 *p = ((UINT8 *) (p_buf + 1)) + p_buf->offset;

    return (l2c_fcr_updcrc (L2CAP_FCR_INIT_CRC, p, p_buf->len));
}

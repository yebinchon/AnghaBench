
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int BLUFI_BUILD_TYPE (int ,int ) ;
 int BLUFI_TYPE_CTRL ;
 int BLUFI_TYPE_CTRL_SUBTYPE_ACK ;
 int btc_blufi_send_encap (int ,int *,int) ;

__attribute__((used)) static void btc_blufi_send_ack(uint8_t seq)
{
    uint8_t type;
    uint8_t data;

    type = BLUFI_BUILD_TYPE(BLUFI_TYPE_CTRL, BLUFI_TYPE_CTRL_SUBTYPE_ACK);
    data = seq;

    btc_blufi_send_encap(type, &data, 1);
}

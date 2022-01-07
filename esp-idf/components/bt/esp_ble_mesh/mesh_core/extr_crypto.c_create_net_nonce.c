
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8_t ;
typedef int u32_t ;


 int sys_put_be32 (int ,int*) ;

__attribute__((used)) static void create_net_nonce(u8_t nonce[13], const u8_t *pdu,
                             u32_t iv_index)
{

    nonce[0] = 0x00;


    nonce[1] = pdu[1];


    nonce[2] = pdu[2];
    nonce[3] = pdu[3];
    nonce[4] = pdu[4];


    nonce[5] = pdu[5];
    nonce[6] = pdu[6];


    nonce[7] = 0U;
    nonce[8] = 0U;


    sys_put_be32(iv_index, &nonce[9]);
}

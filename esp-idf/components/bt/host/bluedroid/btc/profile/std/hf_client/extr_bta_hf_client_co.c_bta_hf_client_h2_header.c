
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int UINT8 ;
typedef int UINT16 ;
struct TYPE_2__ {int sequence_number; } ;


 int BTA_HF_H2_HEADER ;
 int BTA_HF_H2_HEADER_BIT0_MASK ;
 int BTA_HF_H2_HEADER_BIT1_MASK ;
 int BTA_HF_H2_HEADER_SN0_BIT_OFFSET1 ;
 int BTA_HF_H2_HEADER_SN0_BIT_OFFSET2 ;
 int BTA_HF_H2_HEADER_SN1_BIT_OFFSET1 ;
 int BTA_HF_H2_HEADER_SN1_BIT_OFFSET2 ;
 TYPE_1__ bta_hf_client_co_cb ;

__attribute__((used)) static void bta_hf_client_h2_header(UINT16 *p_buf)
{
    UINT16 h2_header = 0x0801;
    UINT8 h2_header_sn0 = bta_hf_client_co_cb.sequence_number & (1 << 0);
    UINT8 h2_header_sn1 = bta_hf_client_co_cb.sequence_number & (1 << 1);
    h2_header |= (h2_header_sn0 << 12
                | h2_header_sn0 << 13
                | h2_header_sn1 << (14 - 1)
                | h2_header_sn1 << (15 - 1)
                );

    bta_hf_client_co_cb.sequence_number++;
    *p_buf = h2_header;
}

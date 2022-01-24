#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int AVCRCId ;
typedef  int /*<<< orphan*/  AVCRC ;

/* Variables and functions */
#define  AV_CRC_16_ANSI 135 
#define  AV_CRC_16_ANSI_LE 134 
#define  AV_CRC_16_CCITT 133 
#define  AV_CRC_24_IEEE 132 
#define  AV_CRC_32_IEEE 131 
#define  AV_CRC_32_IEEE_LE 130 
#define  AV_CRC_8_ATM 129 
#define  AV_CRC_8_EBU 128 
 int /*<<< orphan*/  FUNC0 (int const) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  const** av_crc_table ; 

const AVCRC *FUNC2(AVCRCId crc_id)
{
#if !CONFIG_HARDCODED_TABLES
    switch (crc_id) {
    case AV_CRC_8_ATM:      FUNC0(AV_CRC_8_ATM); break;
    case AV_CRC_8_EBU:      FUNC0(AV_CRC_8_EBU); break;
    case AV_CRC_16_ANSI:    FUNC0(AV_CRC_16_ANSI); break;
    case AV_CRC_16_CCITT:   FUNC0(AV_CRC_16_CCITT); break;
    case AV_CRC_24_IEEE:    FUNC0(AV_CRC_24_IEEE); break;
    case AV_CRC_32_IEEE:    FUNC0(AV_CRC_32_IEEE); break;
    case AV_CRC_32_IEEE_LE: FUNC0(AV_CRC_32_IEEE_LE); break;
    case AV_CRC_16_ANSI_LE: FUNC0(AV_CRC_16_ANSI_LE); break;
    default: FUNC1(0);
    }
#endif
    return av_crc_table[crc_id];
}
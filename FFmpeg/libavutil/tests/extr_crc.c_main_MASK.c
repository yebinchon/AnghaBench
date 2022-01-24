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
typedef  int uint8_t ;
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  AVCRC ;

/* Variables and functions */
#define  AV_CRC_16_ANSI 134 
#define  AV_CRC_16_ANSI_LE 133 
#define  AV_CRC_24_IEEE 132 
#define  AV_CRC_32_IEEE 131 
#define  AV_CRC_32_IEEE_LE 130 
#define  AV_CRC_8_ATM 129 
#define  AV_CRC_8_EBU 128 
 int FUNC0 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/ * FUNC1 (unsigned int const) ; 
 int /*<<< orphan*/  FUNC2 (char*,unsigned int const,int) ; 

int FUNC3(void)
{
    uint8_t buf[1999];
    int i;
    static const unsigned p[7][3] = {
        { AV_CRC_32_IEEE_LE, 0xEDB88320, 0x3D5CDD04 },
        { AV_CRC_32_IEEE   , 0x04C11DB7, 0xC0F5BAE0 },
        { AV_CRC_24_IEEE   , 0x864CFB  , 0xB704CE   },
        { AV_CRC_16_ANSI_LE, 0xA001    , 0xBFD8     },
        { AV_CRC_16_ANSI   , 0x8005    , 0x1FBB     },
        { AV_CRC_8_ATM     , 0x07      , 0xE3       },
        { AV_CRC_8_EBU     , 0x1D      , 0xD6       },
    };
    const AVCRC *ctx;

    for (i = 0; i < sizeof(buf); i++)
        buf[i] = i + i * i;

    for (i = 0; i < 7; i++) {
        ctx = FUNC1(p[i][0]);
        FUNC2("crc %08X = %X\n", p[i][1], FUNC0(ctx, 0, buf, sizeof(buf)));
    }
    return 0;
}
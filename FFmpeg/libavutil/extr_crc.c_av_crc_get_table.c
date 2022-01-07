
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int AVCRCId ;
typedef int AVCRC ;
 int CRC_INIT_TABLE_ONCE (int const) ;
 int av_assert0 (int ) ;
 int const** av_crc_table ;

const AVCRC *av_crc_get_table(AVCRCId crc_id)
{

    switch (crc_id) {
    case 129: CRC_INIT_TABLE_ONCE(129); break;
    case 128: CRC_INIT_TABLE_ONCE(128); break;
    case 135: CRC_INIT_TABLE_ONCE(135); break;
    case 133: CRC_INIT_TABLE_ONCE(133); break;
    case 132: CRC_INIT_TABLE_ONCE(132); break;
    case 131: CRC_INIT_TABLE_ONCE(131); break;
    case 130: CRC_INIT_TABLE_ONCE(130); break;
    case 134: CRC_INIT_TABLE_ONCE(134); break;
    default: av_assert0(0);
    }

    return av_crc_table[crc_id];
}

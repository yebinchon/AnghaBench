
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT8 ;
typedef int UINT32 ;
typedef int UINT16 ;


 int BE_STREAM_TO_UINT16 (int,int*) ;
 int BE_STREAM_TO_UINT32 (int,int*) ;
 int BE_STREAM_TO_UINT8 (int,int*) ;
UINT8 *sdpu_get_len_from_type (UINT8 *p, UINT8 type, UINT32 *p_len)
{
    UINT8 u8;
    UINT16 u16;
    UINT32 u32;

    switch (type & 7) {
    case 130:
        *p_len = 1;
        break;
    case 128:
        *p_len = 2;
        break;
    case 134:
        *p_len = 4;
        break;
    case 135:
        *p_len = 8;
        break;
    case 129:
        *p_len = 16;
        break;
    case 133:
        BE_STREAM_TO_UINT8 (u8, p);
        *p_len = u8;
        break;
    case 131:
        BE_STREAM_TO_UINT16 (u16, p);
        *p_len = u16;
        break;
    case 132:
        BE_STREAM_TO_UINT32 (u32, p);
        *p_len = (UINT16) u32;
        break;
    }

    return (p);
}

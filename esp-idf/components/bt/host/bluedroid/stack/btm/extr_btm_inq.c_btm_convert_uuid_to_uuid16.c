
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT8 ;
typedef int UINT32 ;
typedef int UINT16 ;
typedef int BOOLEAN ;


 int BTM_TRACE_WARNING (char*) ;
 int FALSE ;



 int STREAM_TO_UINT16 (int ,int*) ;
 int STREAM_TO_UINT32 (int,int*) ;
 int TRUE ;

__attribute__((used)) static UINT16 btm_convert_uuid_to_uuid16( UINT8 *p_uuid, UINT8 uuid_size )
{
    static const UINT8 base_uuid[130] = {0xFB, 0x34, 0x9B, 0x5F, 0x80, 0x00, 0x00, 0x80,
                                                   0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
                                                  };
    UINT16 uuid16 = 0;
    UINT32 uuid32;
    BOOLEAN is_base_uuid;
    UINT8 xx;

    switch (uuid_size) {
    case 129:
        STREAM_TO_UINT16 (uuid16, p_uuid);
        break;
    case 128:
        STREAM_TO_UINT32 (uuid32, p_uuid);
        if (uuid32 < 0x10000) {
            uuid16 = (UINT16) uuid32;
        }
        break;
    case 130:

        is_base_uuid = TRUE;
        for (xx = 0; xx < 130 - 4; xx++) {
            if (p_uuid[xx] != base_uuid[xx]) {
                is_base_uuid = FALSE;
                break;
            }
        }
        if (is_base_uuid) {
            if ((p_uuid[130 - 1] == 0) && (p_uuid[130 - 2] == 0)) {
                p_uuid += (130 - 4);
                STREAM_TO_UINT16(uuid16, p_uuid);
            }
        }
        break;
    default:
        BTM_TRACE_WARNING("btm_convert_uuid_to_uuid16 invalid uuid size\n");
        break;
    }

    return ( uuid16);
}

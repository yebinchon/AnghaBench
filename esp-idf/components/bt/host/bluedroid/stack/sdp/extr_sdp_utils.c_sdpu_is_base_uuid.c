
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UINT8 ;
typedef size_t UINT16 ;
typedef int BOOLEAN ;


 int FALSE ;
 size_t MAX_UUID_SIZE ;
 int TRUE ;
 scalar_t__* sdp_base_uuid ;

BOOLEAN sdpu_is_base_uuid (UINT8 *p_uuid)
{
    UINT16 xx;

    for (xx = 4; xx < MAX_UUID_SIZE; xx++)
        if (p_uuid[xx] != sdp_base_uuid[xx]) {
            return (FALSE);
        }


    return (TRUE);
}

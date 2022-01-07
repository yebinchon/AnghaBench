
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tBTM_STATUS ;
typedef int UINT16 ;


 int BTM_NO_RESOURCES ;
 int BTM_SUCCESS ;
 int BTM_TRACE_EVENT (char*,int) ;
 scalar_t__ btsnd_hcic_write_voice_settings (int) ;

tBTM_STATUS BTM_WriteVoiceSettings(UINT16 settings)
{
    BTM_TRACE_EVENT ("BTM: BTM_WriteVoiceSettings: Settings: 0x%04x.", settings);


    if (btsnd_hcic_write_voice_settings ((UINT16)(settings & 0x03ff))) {
        return (BTM_SUCCESS);
    }

    return (BTM_NO_RESOURCES);
}

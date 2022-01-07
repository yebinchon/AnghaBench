
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int tSMP_ENC ;
struct TYPE_5__ {int member_0; } ;
typedef TYPE_1__ BT_OCTET16 ;
typedef int BOOLEAN ;


 int BT_OCTET16_LEN ;
 int FALSE ;
 scalar_t__ SMP_Encrypt (TYPE_1__,int ,TYPE_1__,int ,int *) ;
 int SMP_TRACE_EVENT (char*) ;
 int TRUE ;
 int cmac_subkey_cont (int *) ;

__attribute__((used)) static BOOLEAN cmac_generate_subkey(BT_OCTET16 key)
{
    BT_OCTET16 z = {0};
    BOOLEAN ret = TRUE;
    tSMP_ENC output;
    SMP_TRACE_EVENT (" cmac_generate_subkey");

    if (SMP_Encrypt(key, BT_OCTET16_LEN, z, BT_OCTET16_LEN, &output)) {
        cmac_subkey_cont(&output);;
    } else {
        ret = FALSE;
    }

    return ret;
}

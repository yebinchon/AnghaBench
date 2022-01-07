
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void* p_data; int key_type; } ;
typedef TYPE_1__ tSMP_KEY ;
typedef int UINT8 ;
typedef int UINT32 ;
typedef void* BT_OCTET16 ;


 int SMP_KEY_READY_EVT ;
 int SMP_KEY_TYPE_TK ;
 int SMP_TRACE_EVENT (char*) ;
 int UINT32_TO_STREAM (int *,int ) ;
 int smp_cb ;
 int smp_sm_event (int *,int ,TYPE_1__*) ;

void smp_convert_string_to_tk(BT_OCTET16 tk, UINT32 passkey)
{
    UINT8 *p = tk;
    tSMP_KEY key;
    SMP_TRACE_EVENT("smp_convert_string_to_tk\n");
    UINT32_TO_STREAM(p, passkey);

    key.key_type = SMP_KEY_TYPE_TK;
    key.p_data = tk;

    smp_sm_event(&smp_cb, SMP_KEY_READY_EVT, &key);
}

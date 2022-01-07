
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int tBTM_PAIRING_STATE ;
struct TYPE_2__ {char* state_temp_buffer; } ;
 TYPE_1__ btm_cb ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static char *btm_pair_state_descr (tBTM_PAIRING_STATE state)
{

    switch (state) {
    case 137: return ("IDLE");
    case 138: return ("GET_REM_NAME");
    case 128: return ("WAIT_PIN_REQ");
    case 130: return ("WAIT_LOCAL_PIN");
    case 129: return ("WAIT_NUM_CONFIRM");
    case 135: return ("KEY_ENTRY");
    case 131: return ("WAIT_LOCAL_OOB_RSP");
    case 132: return ("WAIT_LOCAL_IOCAPS");
    case 136: return ("INCOMING_SSP");
    case 134: return ("WAIT_AUTH_COMPLETE");
    case 133: return ("WAIT_DISCONNECT");
    }

    return ("???");





}

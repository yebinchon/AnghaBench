
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int wpa_event ;
struct wpa_state_machine {int started; int ft_completed; int PTK; void* PTK_valid; scalar_t__ mgmt_frame_prot; void* ReAuthenticationRequest; void* PtkGroupInit; void* GUpdateStationKeys; TYPE_1__* group; void* AuthenticationRequest; void* Init; void* DeauthenticationRequest; } ;
struct TYPE_2__ {int GKeyDoneStations; } ;


 void* FALSE ;
 int MSG_DEBUG ;
 void* TRUE ;







 int memset (int *,int ,int) ;
 int wpa_ft_install_ptk (struct wpa_state_machine*) ;
 int wpa_printf (int ,char*) ;
 int wpa_remove_ptk (struct wpa_state_machine*) ;
 int wpa_sm_step (struct wpa_state_machine*) ;

int wpa_auth_sm_event(struct wpa_state_machine *sm, wpa_event event)
{
    int remove_ptk = 1;

    if (sm == ((void*)0))
        return -1;

    switch (event) {
    case 132:
    case 134:
        break;
    case 131:
    case 130:
        sm->DeauthenticationRequest = TRUE;
        break;
    case 129:
    case 128:
        if (!sm->started) {







            wpa_printf( MSG_DEBUG, "WPA state machine had not been "
                   "started - initialize now");
            sm->started = 1;
            sm->Init = TRUE;
            if (wpa_sm_step(sm) == 1)
                return 1;
            sm->Init = FALSE;
            sm->AuthenticationRequest = TRUE;
            break;
        }
        if (sm->GUpdateStationKeys) {




            sm->group->GKeyDoneStations--;
            sm->GUpdateStationKeys = FALSE;
            sm->PtkGroupInit = TRUE;
        }
        sm->ReAuthenticationRequest = TRUE;
        break;
    case 133:
        break;

    }
    if (remove_ptk) {
        sm->PTK_valid = FALSE;
        memset(&sm->PTK, 0, sizeof(sm->PTK));

        if (event != 128)
            wpa_remove_ptk(sm);
    }

    return wpa_sm_step(sm);
}

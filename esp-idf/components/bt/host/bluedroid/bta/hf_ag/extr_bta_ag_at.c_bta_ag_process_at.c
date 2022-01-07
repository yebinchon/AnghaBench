
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {char* p_cmd_buf; int p_user; int (* p_err_cback ) (int ,int ,char*) ;int (* p_cmd_cback ) (int ,size_t,int,char*,scalar_t__) ;TYPE_1__* p_at_tbl; } ;
typedef TYPE_2__ tBTA_AG_AT_CB ;
typedef int UINT8 ;
typedef size_t UINT16 ;
struct TYPE_4__ {scalar_t__* p_cmd; int arg_type; scalar_t__ fmt; scalar_t__ max; scalar_t__ min; } ;
typedef scalar_t__ INT16 ;


 int BTA_AG_AT_FREE ;
 scalar_t__ BTA_AG_AT_INT ;
 int BTA_AG_AT_NONE ;
 int BTA_AG_AT_READ ;
 int BTA_AG_AT_SET ;
 int BTA_AG_AT_TEST ;
 int FALSE ;
 int TRUE ;
 int strlen (scalar_t__*) ;
 int stub1 (int ,int ,char*) ;
 int stub2 (int ,size_t,int,char*,scalar_t__) ;
 int stub3 (int ,size_t,int,char*,scalar_t__) ;
 int stub4 (int ,int ,char*) ;
 int stub5 (int ,int ,char*) ;
 scalar_t__ utl_str2int (char*) ;
 int utl_strucmp (scalar_t__*,char*) ;

void bta_ag_process_at(tBTA_AG_AT_CB *p_cb)
{
    UINT16 idx;
    UINT8 arg_type;
    char *p_arg;
    INT16 int_arg = 0;

    for (idx = 0; p_cb->p_at_tbl[idx].p_cmd[0] != 0; idx++) {
        if (!utl_strucmp(p_cb->p_at_tbl[idx].p_cmd, p_cb->p_cmd_buf)) {
            break;
        }
    }


    if (p_cb->p_at_tbl[idx].p_cmd[0] != 0) {

        p_arg = p_cb->p_cmd_buf + strlen(p_cb->p_at_tbl[idx].p_cmd);

        if (p_arg[0] == 0) {
            arg_type = BTA_AG_AT_NONE;
        }

        else if (p_arg[0] == '?' && p_arg[1] == 0) {
            arg_type = BTA_AG_AT_READ;
        }

        else if (p_arg[0] == '=' && p_arg[1] != 0) {
            if (p_arg[1] == '?' && p_arg[2] == 0) {
                arg_type = BTA_AG_AT_TEST;
            } else {
                arg_type = BTA_AG_AT_SET;
                p_arg++;
            }
        }

        else {
            arg_type = BTA_AG_AT_FREE;
        }

        if ((arg_type & p_cb->p_at_tbl[idx].arg_type) != 0) {

            if (arg_type == BTA_AG_AT_SET && p_cb->p_at_tbl[idx].fmt == BTA_AG_AT_INT) {
                int_arg = utl_str2int(p_arg);
                if (int_arg < (INT16) p_cb->p_at_tbl[idx].min ||
                    int_arg > (INT16) p_cb->p_at_tbl[idx].max) {

                    (*p_cb->p_err_cback)(p_cb->p_user, FALSE, ((void*)0));
                } else {
                    (*p_cb->p_cmd_cback)(p_cb->p_user, idx, arg_type, p_arg, int_arg);
                }
            } else {
                (*p_cb->p_cmd_cback)(p_cb->p_user, idx, arg_type, p_arg, int_arg);
            }
        } else {

            (*p_cb->p_err_cback)(p_cb->p_user, FALSE, ((void*)0));
        }
    } else {

        (*p_cb->p_err_cback)(p_cb->p_user, TRUE, p_cb->p_cmd_buf);
    }
}

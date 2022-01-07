
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int VCOS_STATUS_T ;
struct TYPE_4__ {int * name; } ;
typedef TYPE_1__ VCOS_CMD_T ;


 int VCOS_SUCCESS ;
 int vcos_cmd_register (TYPE_1__*) ;

VCOS_STATUS_T vcos_cmd_register_multiple( VCOS_CMD_T *cmd_entry )
{
    VCOS_STATUS_T status;

    while ( cmd_entry->name != ((void*)0) )
    {
        if (( status = vcos_cmd_register( cmd_entry )) != VCOS_SUCCESS )
        {
            return status;
        }
        cmd_entry++;
    }
    return VCOS_SUCCESS;
}

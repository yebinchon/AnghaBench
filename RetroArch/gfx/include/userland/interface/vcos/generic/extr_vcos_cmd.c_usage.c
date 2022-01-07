
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int descr; int * args; int * name; } ;
typedef TYPE_1__ VCOS_CMD_T ;
typedef int VCOS_CMD_PARAM_T ;


 int print_argument_prefix (int *) ;
 int vcos_cmd_printf (int *,char*,...) ;
 int vcos_strlen (int *) ;

__attribute__((used)) static void usage( VCOS_CMD_PARAM_T *param, VCOS_CMD_T *cmd_entry )
{
    int cmd_idx;
    int nameWidth = 0;
    int argsWidth = 0;
    VCOS_CMD_T *scan_entry;

    vcos_cmd_printf( param, "Usage: " );
    print_argument_prefix( param );
    vcos_cmd_printf( param, "command [args ...]\n" );
    vcos_cmd_printf( param, "\n" );
    vcos_cmd_printf( param, "Where command is one of the following:\n" );

    for ( cmd_idx = 0; cmd_entry[cmd_idx].name != ((void*)0); cmd_idx++ )
    {
        int aw;
        int nw;

        scan_entry = &cmd_entry[cmd_idx];

        nw = vcos_strlen( scan_entry->name );
        aw = vcos_strlen( scan_entry->args );

        if ( nw > nameWidth )
        {
            nameWidth = nw;
        }
        if ( aw > argsWidth )
        {
            argsWidth = aw;
        }
    }

    for ( cmd_idx = 0; cmd_entry[cmd_idx].name != ((void*)0); cmd_idx++ )
    {
        scan_entry = &cmd_entry[cmd_idx];

        vcos_cmd_printf( param, "  %-*s %-*s - %s\n",
                    nameWidth, scan_entry->name,
                    argsWidth, scan_entry->args,
                    scan_entry->descr );
    }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * name; } ;
typedef TYPE_1__ VCOS_CMD_T ;


 scalar_t__ vcos_strcmp (int *,char const*) ;

__attribute__((used)) static VCOS_CMD_T *find_cmd( VCOS_CMD_T *cmd_entry, const char *name )
{
    VCOS_CMD_T *scan_entry = cmd_entry;

    while ( scan_entry->name != ((void*)0) )
    {
        if ( vcos_strcmp( scan_entry->name, name ) == 0 )
        {
            return scan_entry;
        }
        scan_entry++;
    }

    return ((void*)0);
}

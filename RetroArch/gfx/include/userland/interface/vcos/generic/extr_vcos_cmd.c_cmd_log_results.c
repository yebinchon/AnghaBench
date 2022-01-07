
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* result_buf; char* result_ptr; } ;
typedef TYPE_1__ VCOS_CMD_PARAM_T ;
struct TYPE_5__ {int * log_category; } ;


 int VCOS_LOG_INFO ;
 TYPE_3__ cmd_globals ;
 scalar_t__ vcos_is_log_enabled (int *,int ) ;
 int vcos_log_impl (int *,int ,char*,char*) ;
 int vcos_log_info (char*,char*) ;

__attribute__((used)) static void cmd_log_results( VCOS_CMD_PARAM_T *param )
{
    char *start;
    char *end;

    start = end = param->result_buf;

    while ( *start != '\0' )
    {
        while (( *end != '\0' ) && ( *end != '\n' ))
            end++;

        if ( *end == '\n' )
        {
            *end++ = '\0';
        }

        if ( cmd_globals.log_category != ((void*)0) )
        {
            if ( vcos_is_log_enabled( cmd_globals.log_category, VCOS_LOG_INFO ))
            {
                vcos_log_impl( cmd_globals.log_category, VCOS_LOG_INFO, "%s", start );
            }
        }
        else
        {
            vcos_log_info( "%s", start );
        }

        start = end;
    }



    param->result_ptr = param->result_buf;
    param->result_buf[0] = '\0';
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int va_list ;
struct TYPE_5__ {char* result_size; char* result_ptr; int result_buf; int use_log; } ;
typedef TYPE_1__ VCOS_CMD_PARAM_T ;
struct TYPE_6__ {int * log_category; } ;


 TYPE_4__ cmd_globals ;
 int cmd_log_results (TYPE_1__*) ;
 int vcos_vsnprintf (char*,int,char const*,int ) ;

void vcos_cmd_vprintf( VCOS_CMD_PARAM_T *param, const char *fmt, va_list args )
{
    int bytes_written;
    int bytes_remaining;

    bytes_remaining = (int)(param->result_size - ( param->result_ptr - param->result_buf ));

    bytes_written = vcos_vsnprintf( param->result_ptr, bytes_remaining, fmt, args );

    if ( cmd_globals.log_category != ((void*)0) )
    {




        if ( (( bytes_written + 1 ) >= bytes_remaining )
        || ( param->result_ptr[ bytes_written - 1 ] == '\n' ))
        {
            cmd_log_results( param );
        }
        else
        {
            param->result_ptr += bytes_written;
        }
    }
    else
    {
        if (( bytes_written + 1 ) >= bytes_remaining )
        {


            param->use_log = 1;

            *param->result_ptr = '\0';

            cmd_log_results( param );

            bytes_written = vcos_vsnprintf( param->result_ptr, bytes_remaining, fmt, args );
        }
        param->result_ptr += bytes_written;
    }
}

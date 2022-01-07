
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct jpeg_error_mgr {int last_jpeg_message; scalar_t__ last_addon_message; scalar_t__ first_addon_message; int * addon_message_table; int jpeg_message_table; scalar_t__ msg_code; scalar_t__ num_warnings; scalar_t__ trace_level; int reset_error_mgr; int format_message; int output_message; int emit_message; int error_exit; } ;


 scalar_t__ JMSG_LASTMSGCODE ;
 int emit_message ;
 int error_exit ;
 int format_message ;
 int jpeg_std_message_table ;
 int output_message ;
 int reset_error_mgr ;

struct jpeg_error_mgr *
jpeg_std_error (struct jpeg_error_mgr * err)
{
  err->error_exit = error_exit;
  err->emit_message = emit_message;
  err->output_message = output_message;
  err->format_message = format_message;
  err->reset_error_mgr = reset_error_mgr;

  err->trace_level = 0;
  err->num_warnings = 0;
  err->msg_code = 0;


  err->jpeg_message_table = jpeg_std_message_table;
  err->last_jpeg_message = (int) JMSG_LASTMSGCODE - 1;

  err->addon_message_table = ((void*)0);
  err->first_addon_message = 0;
  err->last_addon_message = 0;

  return err;
}

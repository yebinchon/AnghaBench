
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Cbuf_AddText (char const*) ;
 int Cbuf_Execute () ;
 int Cbuf_InsertText (char const*) ;
 int Cmd_ExecuteString (char const*) ;
 int Com_Error (int ,char*) ;
 int ERR_FATAL ;



 int strlen (char const*) ;

void Cbuf_ExecuteText (int exec_when, const char *text)
{
 switch (exec_when)
 {
 case 128:
  if (text && strlen(text) > 0) {
   Cmd_ExecuteString (text);
  } else {
   Cbuf_Execute();
  }
  break;
 case 129:
  Cbuf_InsertText (text);
  break;
 case 130:
  Cbuf_AddText (text);
  break;
 default:
  Com_Error (ERR_FATAL, "Cbuf_ExecuteText: bad exec_when");
 }
}

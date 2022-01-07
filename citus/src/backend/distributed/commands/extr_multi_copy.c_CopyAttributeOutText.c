
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {char* delim; int file_encoding; scalar_t__ need_transcoding; } ;
typedef TYPE_1__* CopyOutState ;


 int CopyFlushOutput (TYPE_1__*,char*,char*) ;
 int CopySendChar (TYPE_1__*,char) ;
 char* pg_server_to_any (char*,int ,int ) ;
 int strlen (char*) ;

__attribute__((used)) static void
CopyAttributeOutText(CopyOutState cstate, char *string)
{
 char *pointer = ((void*)0);
 char *start = ((void*)0);
 char c = '\0';
 char delimc = cstate->delim[0];

 if (cstate->need_transcoding)
 {
  pointer = pg_server_to_any(string, strlen(string), cstate->file_encoding);
 }
 else
 {
  pointer = string;
 }
 start = pointer;
 while ((c = *pointer) != '\0')
 {
  if ((unsigned char) c < (unsigned char) 0x20)
  {







   switch (c)
   {
    case '\b':
     c = 'b';
     break;
    case '\f':
     c = 'f';
     break;
    case '\n':
     c = 'n';
     break;
    case '\r':
     c = 'r';
     break;
    case '\t':
     c = 't';
     break;
    case '\v':
     c = 'v';
     break;
    default:

     if (c == delimc)
      break;

     pointer++;
     continue;
   }

   CopyFlushOutput(cstate, start, pointer);
   CopySendChar(cstate, '\\');
   CopySendChar(cstate, c);
   start = ++pointer;
  }
  else if (c == '\\' || c == delimc)
  {
   CopyFlushOutput(cstate, start, pointer);
   CopySendChar(cstate, '\\');
   start = pointer++;
  }
  else
  {
   pointer++;
  }
 }

 CopyFlushOutput(cstate, start, pointer);
}

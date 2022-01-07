
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int cursize; scalar_t__ data; } ;


 int Cmd_ExecuteString (char*) ;
 int Com_Memcpy (char*,char*,int) ;
 int MAX_CMD_LINE ;
 TYPE_1__ cmd_text ;
 scalar_t__ cmd_wait ;
 int memmove (char*,char*,int) ;

void Cbuf_Execute (void)
{
 int i;
 char *text;
 char line[MAX_CMD_LINE];
 int quotes;

 while (cmd_text.cursize)
 {
  if ( cmd_wait ) {


   cmd_wait--;
   break;
  }


  text = (char *)cmd_text.data;

  quotes = 0;
  for (i=0 ; i< cmd_text.cursize ; i++)
  {
   if (text[i] == '"')
    quotes++;
   if ( !(quotes&1) && text[i] == ';')
    break;
   if (text[i] == '\n' || text[i] == '\r' )
    break;
  }

  if( i >= (MAX_CMD_LINE - 1)) {
   i = MAX_CMD_LINE - 1;
  }

  Com_Memcpy (line, text, i);
  line[i] = 0;





  if (i == cmd_text.cursize)
   cmd_text.cursize = 0;
  else
  {
   i++;
   cmd_text.cursize -= i;
   memmove (text, text+i, cmd_text.cursize);
  }



  Cmd_ExecuteString (line);
 }
}

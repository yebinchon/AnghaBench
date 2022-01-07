
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int fileHandle_t ;
struct TYPE_2__ {int current; int totallines; short* text; int linewidth; } ;


 int Cmd_Argc () ;
 int Cmd_Argv (int) ;
 int Com_Printf (char*,...) ;
 int FS_FCloseFile (int ) ;
 int FS_FOpenFileWrite (int ) ;
 int FS_Write (char*,int ,int ) ;
 TYPE_1__ con ;
 int strcat (char*,char*) ;
 int strlen (char*) ;

void Con_Dump_f (void)
{
 int l, x, i;
 short *line;
 fileHandle_t f;
 char buffer[1024];

 if (Cmd_Argc() != 2)
 {
  Com_Printf ("usage: condump <filename>\n");
  return;
 }

 Com_Printf ("Dumped console text to %s.\n", Cmd_Argv(1) );

 f = FS_FOpenFileWrite( Cmd_Argv( 1 ) );
 if (!f)
 {
  Com_Printf ("ERROR: couldn't open.\n");
  return;
 }


 for (l = con.current - con.totallines + 1 ; l <= con.current ; l++)
 {
  line = con.text + (l%con.totallines)*con.linewidth;
  for (x=0 ; x<con.linewidth ; x++)
   if ((line[x] & 0xff) != ' ')
    break;
  if (x != con.linewidth)
   break;
 }


 buffer[con.linewidth] = 0;
 for ( ; l <= con.current ; l++)
 {
  line = con.text + (l%con.totallines)*con.linewidth;
  for(i=0; i<con.linewidth; i++)
   buffer[i] = line[i] & 0xff;
  for (x=con.linewidth-1 ; x>=0 ; x--)
  {
   if (buffer[x] == ' ')
    buffer[x] = 0;
   else
    break;
  }
  strcat( buffer, "\n" );
  FS_Write(buffer, strlen(buffer), f);
 }

 FS_FCloseFile( f );
}

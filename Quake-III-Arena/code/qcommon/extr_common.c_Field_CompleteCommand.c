
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {char* buffer; scalar_t__ cursor; } ;
typedef TYPE_1__ field_t ;


 int Cmd_Argc () ;
 char* Cmd_Argv (int ) ;
 int Cmd_CommandCompletion (int ) ;
 int Cmd_TokenizeString (char*) ;
 int Com_Memcpy (TYPE_1__*,TYPE_1__*,int) ;
 int Com_Printf (char*,char*) ;
 int Com_sprintf (char*,int,char*,scalar_t__*) ;
 int ConcatRemaining (char*,char*) ;
 int Cvar_CommandCompletion (int ) ;
 int FindMatches ;
 int PrintMatches ;
 int Q_strcat (char*,int,char*) ;
 TYPE_1__* completionField ;
 char* completionString ;
 int matchCount ;
 scalar_t__* shortestMatch ;
 scalar_t__ strlen (char*) ;

void Field_CompleteCommand( field_t *field ) {
 field_t temp;

 completionField = field;


 Cmd_TokenizeString( completionField->buffer );

 completionString = Cmd_Argv(0);
 if ( completionString[0] == '\\' || completionString[0] == '/' ) {
  completionString++;
 }
 matchCount = 0;
 shortestMatch[0] = 0;

 if ( strlen( completionString ) == 0 ) {
  return;
 }

 Cmd_CommandCompletion( FindMatches );
 Cvar_CommandCompletion( FindMatches );

 if ( matchCount == 0 ) {
  return;
 }

 Com_Memcpy(&temp, completionField, sizeof(field_t));

 if ( matchCount == 1 ) {
  Com_sprintf( completionField->buffer, sizeof( completionField->buffer ), "\\%s", shortestMatch );
  if ( Cmd_Argc() == 1 ) {
   Q_strcat( completionField->buffer, sizeof( completionField->buffer ), " " );
  } else {
   ConcatRemaining( temp.buffer, completionString );
  }
  completionField->cursor = strlen( completionField->buffer );
  return;
 }


 Com_sprintf( completionField->buffer, sizeof( completionField->buffer ), "\\%s", shortestMatch );
 completionField->cursor = strlen( completionField->buffer );
 ConcatRemaining( temp.buffer, completionString );

 Com_Printf( "]%s\n", completionField->buffer );


 Cmd_CommandCompletion( PrintMatches );
 Cvar_CommandCompletion( PrintMatches );
}

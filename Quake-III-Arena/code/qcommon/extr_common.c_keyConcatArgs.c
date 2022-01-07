
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int buffer; } ;


 int Cmd_Argc () ;
 char* Cmd_Argv (int) ;
 int Q_strcat (int ,int,char*) ;
 TYPE_1__* completionField ;

__attribute__((used)) static void keyConcatArgs( void ) {
 int i;
 char *arg;

 for ( i = 1 ; i < Cmd_Argc() ; i++ ) {
  Q_strcat( completionField->buffer, sizeof( completionField->buffer ), " " );
  arg = Cmd_Argv( i );
  while (*arg) {
   if (*arg == ' ') {
    Q_strcat( completionField->buffer, sizeof( completionField->buffer ), "\"");
    break;
   }
   arg++;
  }
  Q_strcat( completionField->buffer, sizeof( completionField->buffer ), Cmd_Argv( i ) );
  if (*arg == ' ') {
   Q_strcat( completionField->buffer, sizeof( completionField->buffer ), "\"");
  }
 }
}

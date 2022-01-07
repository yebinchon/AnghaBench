
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ELastCommand ;


 int EmitString (char*) ;



 int LastCommand ;

__attribute__((used)) static void EmitCommand(ELastCommand command)
{
 switch(command)
 {
  case 130:
   EmitString( "89 07" );
   break;

  case 129:
   EmitString( "83 EF 04" );
   break;

  case 128:
   EmitString( "83 EF 08" );
   break;
  default:
   break;
 }
 LastCommand = command;
}

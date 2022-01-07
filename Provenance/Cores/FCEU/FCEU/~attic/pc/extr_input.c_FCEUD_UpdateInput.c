
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GetMouseData (int ) ;
 int* InputType ;
 int KeyboardCommands () ;
 int MouseData ;
 int UpdateFKB () ;
 int UpdateFTrainer () ;
 int UpdateGamepad () ;
 int UpdateHyperShot () ;
 int UpdateMahjong () ;
 int UpdatePPadData (int) ;
 int UpdatePhysicalInput () ;
 int UpdateQuizKing () ;
 int UpdateTopRider () ;
 int cidisabled ;
 int * powerpadbuf ;

void FCEUD_UpdateInput(void)
{
  int x;
  int t=0;

  UpdatePhysicalInput();
  KeyboardCommands();

  for(x=0;x<2;x++)
   switch(InputType[x])
   {
    case 131:t|=1;break;
    case 132:t|=2;break;
    case 128:t|=2;break;
    case 130:
    case 129:powerpadbuf[x]=UpdatePPadData(x);break;
   }

  switch(InputType[2])
  {
   case 142:t|=2;break;
   case 134:t|=2;break;
   case 141:if(cidisabled) UpdateFKB();break;
   case 138: UpdateHyperShot();break;
   case 137: UpdateMahjong();break;
   case 135: UpdateQuizKing();break;
   case 139:
   case 140: UpdateFTrainer();break;
   case 133: UpdateTopRider();break;
   case 136:t|=2;break;

  }

  if(t&1)
   UpdateGamepad();

  if(t&2)
   GetMouseData(MouseData);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* BWorldData ;
 int EO_NOFOURSCORE ;
 int FCEUI_DisableFourScore (int) ;
 int FCEUI_SetInput (int,int,void*,int) ;
 int FCEUI_SetInputFC (int,void*,int) ;
 int FTrainerData ;
 int HyperShotData ;
 int InitMouse () ;
 int* InputType ;
 int JSreturn ;
 int MahjongData ;
 void* MouseData ;
 int QuizKingData ;
 int TopRiderData ;
 int eoptions ;
 void* fkbkeys ;
 int * powerpadbuf ;

void InitOtherInput(void)
{
   void *InputDPtr;

   int t;
   int x;
   int attrib;

   for(t=0,x=0;x<2;x++)
   {
    attrib=0;
    InputDPtr=0;
    switch(InputType[x])
    {
     case 130:
     case 129:InputDPtr=&powerpadbuf[x];break;
     case 131:InputDPtr=&JSreturn;break;
     case 132:InputDPtr=MouseData;t|=1;break;
     case 128:InputDPtr=MouseData;
                                t|=1;
                                attrib=1;
                                break;
    }
    FCEUI_SetInput(x,InputType[x],InputDPtr,attrib);
   }

   attrib=0;
   InputDPtr=0;
   switch(InputType[2])
   {
    case 134:InputDPtr=MouseData;t|=1;attrib=1;break;
    case 136:InputDPtr=MouseData;t|=1;attrib=1;break;
    case 143:InputDPtr=MouseData;t|=1;break;
    case 141:InputDPtr=fkbkeys;break;
    case 138:InputDPtr=&HyperShotData;break;
    case 137:InputDPtr=&MahjongData;break;
    case 135:InputDPtr=&QuizKingData;break;
    case 133:InputDPtr=&TopRiderData;break;
    case 142:InputDPtr=BWorldData;break;
    case 140:
    case 139:InputDPtr=&FTrainerData;break;
   }

   FCEUI_SetInputFC(InputType[2],InputDPtr,attrib);
   FCEUI_DisableFourScore(eoptions&EO_NOFOURSCORE);

   if(t)
    InitMouse();
}

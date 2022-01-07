
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8 ;


 int ButtonConfigBegin () ;
 int ButtonConfigEnd () ;




 int ** GamePadConfig ;
 int * HyperShotButtons ;
 int * QuizKingButtons ;
 int ** powerpadsc ;
 int sprintf (int *,char*,int,...) ;
 int subcon (int *,int *) ;

void ConfigDevice(int which, int arg)
{
 uint8 buf[256];
 int x;

 ButtonConfigBegin();
 switch(which)
 {
  case 128:
   for(x=0;x<6;x++)
   {
    sprintf(buf,"Quiz King Buzzer #%d", x+1);
    subcon(buf,&QuizKingButtons[x]);
   }
   break;
  case 130:
   for(x=0;x<4;x++)
   {
    sprintf(buf,"Hyper Shot %d: %s",((x&2)>>1)+1,(x&1)?"JUMP":"RUN");
    subcon(buf,&HyperShotButtons[x]);
   }
   break;
  case 129:
   for(x=0;x<12;x++)
   {
    sprintf(buf,"PowerPad %d: %d", (arg&1)+1,x+11);
    subcon(buf,&powerpadsc[arg&1][x]);
   }
   break;

  case 131:
  {
   char *str[10]={"A","B","SELECT","START","UP","DOWN","LEFT","RIGHT","Rapid A","Rapid B"};
   for(x=0;x<10;x++)
   {
    sprintf(buf,"GamePad #%d: %s",arg+1,str[x]);
    subcon(buf,&GamePadConfig[arg][x]);
   }
  }
  break;
 }

 ButtonConfigEnd();
}

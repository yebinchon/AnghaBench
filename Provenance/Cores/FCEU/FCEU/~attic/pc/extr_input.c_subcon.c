
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8 ;
struct TYPE_4__ {scalar_t__* ButtType; scalar_t__* DeviceNum; scalar_t__* ButtonNum; int NumC; } ;
typedef TYPE_1__ ButtConfig ;


 int DWaitButton (int *,TYPE_1__*,int) ;
 int MAXBUTTCONFIG ;
 int sprintf (int *,char*,char*,int) ;

__attribute__((used)) static void subcon(char *text, ButtConfig *bc)
{
 uint8 buf[256];
 int wc;

 for(wc=0;wc<MAXBUTTCONFIG;wc++)
 {
  sprintf(buf,"%s (%d)",text,wc+1);
  DWaitButton(buf,bc,wc);

  if(wc && bc->ButtType[wc]==bc->ButtType[wc-1] && bc->DeviceNum[wc]==bc->DeviceNum[wc-1] &&
                bc->ButtonNum[wc]==bc->ButtonNum[wc-1])
         break;
 }
 bc->NumC=wc;
}

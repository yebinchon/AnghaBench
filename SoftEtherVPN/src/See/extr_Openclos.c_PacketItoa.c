
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int* PUCHAR ;



void PacketItoa(UINT n,PUCHAR buf){
int i;

 for(i=0;i<20;i+=2){
  buf[18-i]=(n%10)+48;
  buf[19-i]=0;
  n/=10;
 }

}

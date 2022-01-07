
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef float* vec3_t ;


 int BotAI_Print (int ,char*,int) ;
 int PRT_MESSAGE ;
 int qtrue ;

int BotGPSToPosition(char *buf, vec3_t position) {
 int i, j = 0;
 int num, sign;

 for (i = 0; i < 3; i++) {
  num = 0;
  while(buf[j] == ' ') j++;
  if (buf[j] == '-') {
   j++;
   sign = -1;
  }
  else {
   sign = 1;
  }
  while (buf[j]) {
   if (buf[j] >= '0' && buf[j] <= '9') {
    num = num * 10 + buf[j] - '0';
    j++;
   }
   else {
    j++;
    break;
   }
  }
  BotAI_Print(PRT_MESSAGE, "%d\n", sign * num);
  position[i] = (float) sign * num;
 }
 return qtrue;
}

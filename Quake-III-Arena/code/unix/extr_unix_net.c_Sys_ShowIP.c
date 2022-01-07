
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Com_Printf (char*,int ,int ,int ,int ) ;
 int ** localIP ;
 int numIP ;

void Sys_ShowIP(void) {
 int i;

 for (i = 0; i < numIP; i++) {
  Com_Printf( "IP: %i.%i.%i.%i\n", localIP[i][0], localIP[i][1], localIP[i][2], localIP[i][3] );
 }
}

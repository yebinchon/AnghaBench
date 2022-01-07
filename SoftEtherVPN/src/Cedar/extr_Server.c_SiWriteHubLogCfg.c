
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HUB_LOG ;
typedef int FOLDER ;


 int SiWriteHubLogCfgEx (int *,int *,int) ;

void SiWriteHubLogCfg(FOLDER *f, HUB_LOG *g)
{
 SiWriteHubLogCfgEx(f, g, 0);
}

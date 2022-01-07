
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BupRam ;
 int T123Load (int ,int,int,char const*) ;

int LoadBackupRam(const char *filename)
{
   return T123Load(BupRam, 0x10000, 1, filename);
}

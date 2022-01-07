
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BiosRom ;
 int T123Load (int ,int,int,char const*) ;

int LoadBios(const char *filename)
{
   return T123Load(BiosRom, 0x80000, 2, filename);
}

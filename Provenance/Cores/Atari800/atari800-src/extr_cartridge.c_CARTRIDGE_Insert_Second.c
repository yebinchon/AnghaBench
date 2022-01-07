
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CARTRIDGE_Remove_Second () ;
 int CARTRIDGE_piggyback ;
 int InsertCartridge (char const*,int *) ;

int CARTRIDGE_Insert_Second(const char *filename)
{

 CARTRIDGE_Remove_Second();
 return InsertCartridge(filename, &CARTRIDGE_piggyback);
}

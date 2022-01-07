
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CARTRIDGE_Remove () ;
 int CARTRIDGE_main ;
 int InsertCartridge (char const*,int *) ;

int CARTRIDGE_Insert(const char *filename)
{

 CARTRIDGE_Remove();
 return InsertCartridge(filename, &CARTRIDGE_main);
}

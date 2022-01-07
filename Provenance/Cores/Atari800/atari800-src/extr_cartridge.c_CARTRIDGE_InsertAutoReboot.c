
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AutoReboot () ;
 int CARTRIDGE_Insert (char const*) ;

int CARTRIDGE_InsertAutoReboot(const char *filename)
{
 int result = CARTRIDGE_Insert(filename);
 AutoReboot();
 return result;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UBYTE ;


 int ESC_Add (int,int,int ) ;
 int ESC_BINLOADER_CONT ;
 int loader_cont ;

int BINLOAD_LoaderStart(UBYTE *buffer)
{
 buffer[0] = 0x00;
 buffer[1] = 0x01;
 buffer[2] = 0x00;
 buffer[3] = 0x07;
 buffer[4] = 0x77;
 buffer[5] = 0xe4;
 buffer[6] = 0xf2;
 buffer[7] = ESC_BINLOADER_CONT;
 ESC_Add(0x706, ESC_BINLOADER_CONT, loader_cont);
 return 'C';
}

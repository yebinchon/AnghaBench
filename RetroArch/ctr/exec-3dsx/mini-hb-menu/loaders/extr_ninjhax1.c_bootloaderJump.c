
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int callBootloader_1x (int,int ) ;
 int fileHandle ;

__attribute__((used)) static void bootloaderJump(void)
{
 callBootloader_1x(0x00000000, fileHandle);
}

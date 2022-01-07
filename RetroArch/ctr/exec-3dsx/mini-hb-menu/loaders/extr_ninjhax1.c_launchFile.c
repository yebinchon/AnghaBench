
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int executableMetadata_s ;
struct TYPE_3__ {int buf; } ;
typedef TYPE_1__ argData_s ;


 int __system_retAddr ;
 int bootloaderJump ;
 scalar_t__ fileHandle ;
 scalar_t__ launchOpenFile (char const*) ;
 int setArgs_1x (int ,int) ;

__attribute__((used)) static void launchFile(const char* path, argData_s* args, executableMetadata_s* em)
{
 fileHandle = launchOpenFile(path);
 if (fileHandle==0)
  return;
 setArgs_1x(args->buf, sizeof(args->buf));
 __system_retAddr = bootloaderJump;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int archlist ;
struct TYPE_3__ {char* member_0; int member_1; int member_2; int name; int * member_4; int const member_3; } ;
typedef TYPE_1__ NXArchInfo ;



 scalar_t__ strcmp (char const*,int ) ;

__attribute__((used)) static const NXArchInfo *
lookup_arch(const char *archstring)
{




 static const NXArchInfo archlist[] = {
  { "x86_64", 0x01000007 , 3 , 128, ((void*)0) },
  { "x86_64h", 0x01000007 , 8 , 128, ((void*)0) },
  { "armv7", 12 , 9 , 128, ((void*)0) },
  { "armv7s", 12 , 11 , 128, ((void*)0) },
  { "armv7k", 12 , 12 , 128, ((void*)0) },
  { "arm64", 0x0100000c , 0 , 128, ((void*)0) },
 };
 unsigned long i;

 for (i=0; i < sizeof(archlist)/sizeof(archlist[0]); i++) {
  if (0 == strcmp(archstring, archlist[i].name)) {
   return &archlist[i];
  }
 }

 return ((void*)0);
}

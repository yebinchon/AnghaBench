
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int tmp2 ;
typedef int tmp ;
typedef char* UINT64 ;
struct TYPE_2__ {int OsType; } ;
typedef int IO ;


 int FileClose (int *) ;
 int * FileCreate (char*) ;
 int FileDelete (char*) ;
 int * FileOpen (char*,int) ;
 int Format (char*,int,char*,char*) ;
 TYPE_1__* GetOsInfo () ;
 int MakeDir (char*) ;
 scalar_t__ OS_IS_UNIX (int ) ;
 int Print (char*) ;
 char* SystemTime64 () ;
 int exit (int ) ;

void CheckUnixTempDir()
{
 if (OS_IS_UNIX(GetOsInfo()->OsType))
 {
  char tmp[128], tmp2[64];
  UINT64 now = SystemTime64();
  IO *o;

  MakeDir("/tmp");

  Format(tmp2, sizeof(tmp2), "%I64u", now);

  Format(tmp, sizeof(tmp), "/tmp/.%s", tmp2);

  o = FileCreate(tmp);
  if (o == ((void*)0))
  {
   o = FileOpen(tmp, 0);
   if (o == ((void*)0))
   {
    Print("Unable to use /tmp.\n\n");
    exit(0);
   }
  }

  FileClose(o);

  FileDelete(tmp);
 }
}

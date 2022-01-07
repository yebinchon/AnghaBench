
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int filename ;
struct TYPE_7__ {int Size; } ;
struct TYPE_6__ {int wYear; int wMonth; int wDay; int wHour; int wSecond; int wMinute; } ;
typedef TYPE_1__ SYSTEMTIME ;


 int DeleteLock (int ) ;
 int DumpBuf (TYPE_2__*,char*) ;
 int FreeBuf (TYPE_2__*) ;
 int LocalTime (TYPE_1__*) ;
 int MAX_SIZE ;
 int MakeDirEx (char*) ;
 TYPE_2__* probe_buf ;
 int probe_lock ;
 int snprintf (char*,int,char*,int,int,int,int,int ,int ) ;

void FreeProbe()
{
 if (probe_buf->Size >= 1)
 {
  SYSTEMTIME st;
  char filename[MAX_SIZE];


  MakeDirEx("@probe_log");

  LocalTime(&st);

  snprintf(filename, sizeof(filename), "@probe_log/%04u%02u%02u_%02u%02u%02u.log",
   st.wYear, st.wMonth, st.wDay, st.wHour, st.wMinute, st.wSecond);

  DumpBuf(probe_buf, filename);
 }

 FreeBuf(probe_buf);
 DeleteLock(probe_lock);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int Size; int Buf; } ;
struct TYPE_7__ {int FlushEvent; int RecordQueue; } ;
typedef int RECORD ;
typedef TYPE_1__ LOG ;
typedef int IO ;
typedef TYPE_2__ BUF ;


 int ClearBuf (TYPE_2__*) ;
 int FileWrite (int *,int ,int ) ;
 int Free (int *) ;
 int * GetNext (int ) ;
 int LockQueue (int ) ;
 int Set (int ) ;
 int UnlockQueue (int ) ;
 int WriteRecordToBuffer (TYPE_2__*,int *) ;

__attribute__((used)) static bool LogThreadWriteStdout(LOG *log_object, BUF *buffer, IO *io)
{
 RECORD *rec;


 LockQueue(log_object->RecordQueue);
 {
  rec = GetNext(log_object->RecordQueue);
 }
 UnlockQueue(log_object->RecordQueue);

 if (rec == ((void*)0))
 {
  Set(log_object->FlushEvent);
  return 0;
 }

 ClearBuf(buffer);
 WriteRecordToBuffer(buffer, rec);
 if (!FileWrite(io, buffer->Buf, buffer->Size))
 {
  ClearBuf(buffer);
 }
 Free(rec);

 return 1;
}

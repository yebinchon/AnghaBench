
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_6__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


typedef int tmp ;
typedef int file_name ;
typedef int current_file_name ;
typedef scalar_t__ UINT64 ;
typedef int UINT ;
struct TYPE_20__ {int num_item; } ;
struct TYPE_19__ {scalar_t__ Size; int Buf; } ;
struct TYPE_18__ {scalar_t__ CurrentFilePointer; int log_number_incremented; int CurrentLogNumber; int DirName; int SwitchType; int Prefix; int FlushEvent; TYPE_6__* RecordQueue; } ;
struct TYPE_17__ {int Tick; } ;
typedef TYPE_1__ RECORD ;
typedef TYPE_2__ LOG ;
typedef int IO ;
typedef TYPE_3__ BUF ;


 int ClearBuf (TYPE_3__*) ;
 int Debug (char*) ;
 int FileCloseEx (int *,int) ;
 int * FileCreate (char*) ;
 int * FileOpen (char*,int) ;
 int FileSeek (int *,int ,int ) ;
 void* FileSize64 (int *) ;
 int FileWrite (int *,int ,scalar_t__) ;
 int Free (TYPE_1__*) ;
 scalar_t__ GetMaxLogSize () ;
 TYPE_1__* GetNext (TYPE_6__*) ;
 int IsFileExists (char*) ;
 scalar_t__ LOG_ENGINE_BUFFER_CACHE_SIZE_MAX ;
 int LOG_ENGINE_SAVE_START_CACHE_COUNT ;
 int LockLog (TYPE_2__*) ;
 int LockQueue (TYPE_6__*) ;
 int MAX_SIZE ;
 int MakeDir (int ) ;
 int MakeLogFileName (TYPE_2__*,char*,int,int ,int ,int ,int ,int,char*) ;
 int MsSetThreadPriorityIdle () ;
 int MsSetThreadPriorityRealtime () ;
 int SEEK_END ;
 int Set (int ) ;
 int SleepThread (int) ;
 scalar_t__ StrCmp (char*,char*) ;
 int StrCpy (char*,int,char*) ;
 int UnlockLog (TYPE_2__*) ;
 int UnlockQueue (TYPE_6__*) ;
 int Win32SetFolderCompress (int ,int) ;
 int WriteRecordToBuffer (TYPE_3__*,TYPE_1__*) ;

__attribute__((used)) static bool LogThreadWriteGeneral(LOG *log_object, BUF *buffer, IO **io, bool *log_date_changed, char *current_logfile_datename, char *current_file_name)
{
 RECORD *rec;
 char file_name[MAX_SIZE];
 UINT num;


 LockQueue(log_object->RecordQueue);
 {
  rec = GetNext(log_object->RecordQueue);
  num = log_object->RecordQueue->num_item;
 }
 UnlockQueue(log_object->RecordQueue);
 if (buffer->Size > GetMaxLogSize())
 {

  ClearBuf(buffer);
 }

 if (buffer->Size >= LOG_ENGINE_BUFFER_CACHE_SIZE_MAX)
 {

  if (*io != ((void*)0))
  {
   if ((log_object->CurrentFilePointer + (UINT64)buffer->Size) > GetMaxLogSize())
   {
    if (log_object->log_number_incremented == 0)
    {
     log_object->CurrentLogNumber++;
     log_object->log_number_incremented = 1;
    }
   }
   else
   {
    if (FileWrite(*io, buffer->Buf, buffer->Size) == 0)
    {
     FileCloseEx(*io, 1);


     ClearBuf(buffer);
     *io = ((void*)0);
    }
    else
    {
     log_object->CurrentFilePointer += (UINT64)buffer->Size;
     ClearBuf(buffer);
    }
   }
  }
 }

 if (rec == ((void*)0))
 {
  if (buffer->Size != 0)
  {

   if (*io != ((void*)0))
   {
    if ((log_object->CurrentFilePointer + (UINT64)buffer->Size) > GetMaxLogSize())
    {
     if (log_object->log_number_incremented == 0)
     {
      log_object->CurrentLogNumber++;
      log_object->log_number_incremented = 1;
     }
    }
    else
    {
     if (FileWrite(*io, buffer->Buf, buffer->Size) == 0)
     {
      FileCloseEx(*io, 1);


      ClearBuf(buffer);
      *io = ((void*)0);
     }
     else
     {
      log_object->CurrentFilePointer += (UINT64)buffer->Size;
      ClearBuf(buffer);
     }
    }
   }
  }

  Set(log_object->FlushEvent);
  return 0;
 }


 LockLog(log_object);
 {
  *log_date_changed = MakeLogFileName(log_object, file_name, sizeof(file_name),
   log_object->DirName, log_object->Prefix, rec->Tick, log_object->SwitchType, log_object->CurrentLogNumber, current_logfile_datename);

  if (*log_date_changed)
  {
   UINT i;

   log_object->CurrentLogNumber = 0;
   MakeLogFileName(log_object, file_name, sizeof(file_name),
    log_object->DirName, log_object->Prefix, rec->Tick, log_object->SwitchType, 0, current_logfile_datename);
   for (i = 0;;i++)
   {
    char tmp[MAX_SIZE];
    MakeLogFileName(log_object, tmp, sizeof(tmp),
     log_object->DirName, log_object->Prefix, rec->Tick, log_object->SwitchType, i, current_logfile_datename);

    if (IsFileExists(tmp) == 0)
    {
     break;
    }
    StrCpy(file_name, sizeof(file_name), tmp);
    log_object->CurrentLogNumber = i;
   }
  }
 }
 UnlockLog(log_object);

 if (*io != ((void*)0))
 {
  if (StrCmp(current_file_name, file_name) != 0)
  {



   if (*io != ((void*)0))
   {
    if (*log_date_changed)
    {
     if ((log_object->CurrentFilePointer + (UINT64)buffer->Size) <= GetMaxLogSize())
     {
      if (FileWrite(*io, buffer->Buf, buffer->Size) == 0)
      {
       FileCloseEx(*io, 1);
       ClearBuf(buffer);
       *io = ((void*)0);
      }
      else
      {
       log_object->CurrentFilePointer += (UINT64)buffer->Size;
       ClearBuf(buffer);
      }
     }
    }

    FileCloseEx(*io, 1);
   }

   log_object->log_number_incremented = 0;


   StrCpy(current_file_name, sizeof(current_file_name), file_name);
   *io = FileOpen(file_name, 1);
   if (*io == ((void*)0))
   {

    LockLog(log_object);
    {
     MakeDir(log_object->DirName);




    }
    UnlockLog(log_object);
    *io = FileCreate(file_name);
    log_object->CurrentFilePointer = 0;
   }
   else
   {

    log_object->CurrentFilePointer = FileSize64(*io);
    FileSeek(*io, SEEK_END, 0);
   }
  }
 }
 else
 {

  StrCpy(current_file_name, sizeof(current_file_name), file_name);
  *io = FileOpen(file_name, 1);
  if (*io == ((void*)0))
  {

   LockLog(log_object);
   {
    MakeDir(log_object->DirName);



   }
   UnlockLog(log_object);
   *io = FileCreate(file_name);
   log_object->CurrentFilePointer = 0;
   if (*io == ((void*)0))
   {

    SleepThread(30);
   }
  }
  else
  {

   log_object->CurrentFilePointer = FileSize64(*io);
   FileSeek(*io, SEEK_END, 0);
  }

  log_object->log_number_incremented = 0;
 }


 WriteRecordToBuffer(buffer, rec);


 Free(rec);

 return (*io != ((void*)0));
}

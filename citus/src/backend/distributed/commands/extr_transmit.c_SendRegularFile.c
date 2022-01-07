
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint32 ;
struct TYPE_7__ {int len; int data; } ;
typedef TYPE_1__* StringInfo ;
typedef int FileCompat ;
typedef int File ;


 int FileClose (int ) ;
 int FileCompatFromFileStart (int ) ;
 int FileOpenForTransmit (char const*,int const,int const) ;
 int FileReadCompat (int *,int ,int const,int ) ;
 int FreeStringInfo (TYPE_1__*) ;
 int O_RDONLY ;
 int PG_BINARY ;
 int PG_WAIT_IO ;
 int SendCopyData (TYPE_1__*) ;
 int SendCopyDone () ;
 int SendCopyOutStart () ;
 int enlargeStringInfo (TYPE_1__*,int const) ;
 TYPE_1__* makeStringInfo () ;
 int resetStringInfo (TYPE_1__*) ;

void
SendRegularFile(const char *filename)
{
 StringInfo fileBuffer = ((void*)0);
 int readBytes = -1;
 const uint32 fileBufferSize = 32768;
 const int fileFlags = (O_RDONLY | PG_BINARY);
 const int fileMode = 0;


 File fileDesc = FileOpenForTransmit(filename, fileFlags, fileMode);
 FileCompat fileCompat = FileCompatFromFileStart(fileDesc);





 fileBuffer = makeStringInfo();
 enlargeStringInfo(fileBuffer, fileBufferSize);

 SendCopyOutStart();

 readBytes = FileReadCompat(&fileCompat, fileBuffer->data, fileBufferSize,
          PG_WAIT_IO);
 while (readBytes > 0)
 {
  fileBuffer->len = readBytes;

  SendCopyData(fileBuffer);

  resetStringInfo(fileBuffer);
  readBytes = FileReadCompat(&fileCompat, fileBuffer->data, fileBufferSize,
           PG_WAIT_IO);
 }

 SendCopyDone();

 FreeStringInfo(fileBuffer);
 FileClose(fileDesc);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ int32 ;


 scalar_t__ INVALID_CONNECTION_ID ;
 int MultiClientDisconnect (scalar_t__) ;
 int WARNING ;
 int close (scalar_t__) ;
 int ereport (int ,int ) ;
 int errcode_for_file_access () ;
 int errmsg (char*,char const*) ;
 int unlink (char const*) ;

__attribute__((used)) static void
ReceiveResourceCleanup(int32 connectionId, const char *filename, int32 fileDescriptor)
{
 if (connectionId != INVALID_CONNECTION_ID)
 {
  MultiClientDisconnect(connectionId);
 }

 if (fileDescriptor != -1)
 {
  int closed = -1;
  int deleted = -1;

  closed = close(fileDescriptor);
  if (closed < 0)
  {
   ereport(WARNING, (errcode_for_file_access(),
         errmsg("could not close file \"%s\": %m", filename)));
  }

  deleted = unlink(filename);
  if (deleted != 0)
  {
   ereport(WARNING, (errcode_for_file_access(),
         errmsg("could not delete file \"%s\": %m", filename)));
  }
 }
}

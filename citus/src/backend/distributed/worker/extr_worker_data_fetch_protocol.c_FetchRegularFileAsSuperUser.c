
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint32 ;
struct TYPE_8__ {int data; } ;
typedef TYPE_1__* StringInfo ;


 int ATTEMPT_FILE_SUFFIX ;
 char* CitusExtensionOwnerName () ;
 char* CurrentUserName () ;
 int ERROR ;
 int MIN_TASK_FILENAME_WIDTH ;
 int ReceiveRegularFile (char const*,int ,char*,TYPE_1__*,TYPE_1__*) ;
 int TRANSMIT_WITH_USER_COMMAND ;
 int appendStringInfo (TYPE_1__*,char*,int ,int ,...) ;
 int ereport (int ,int ) ;
 int errcode_for_file_access () ;
 int errmsg (char*,int ,char const*,...) ;
 TYPE_1__* makeStringInfo () ;
 int quote_literal_cstr (char*) ;
 int random () ;
 int rename (int ,int ) ;

__attribute__((used)) static void
FetchRegularFileAsSuperUser(const char *nodeName, uint32 nodePort,
       StringInfo remoteFilename, StringInfo localFilename)
{
 char *nodeUser = ((void*)0);
 StringInfo attemptFilename = ((void*)0);
 StringInfo transmitCommand = ((void*)0);
 char *userName = CurrentUserName();
 uint32 randomId = (uint32) random();
 bool received = 0;
 int renamed = 0;






 attemptFilename = makeStringInfo();
 appendStringInfo(attemptFilename, "%s_%0*u%s", localFilename->data,
      MIN_TASK_FILENAME_WIDTH, randomId, ATTEMPT_FILE_SUFFIX);

 transmitCommand = makeStringInfo();
 appendStringInfo(transmitCommand, TRANSMIT_WITH_USER_COMMAND, remoteFilename->data,
      quote_literal_cstr(userName));


 nodeUser = CitusExtensionOwnerName();

 received = ReceiveRegularFile(nodeName, nodePort, nodeUser, transmitCommand,
          attemptFilename);
 if (!received)
 {
  ereport(ERROR, (errmsg("could not receive file \"%s\" from %s:%u",
          remoteFilename->data, nodeName, nodePort)));
 }


 renamed = rename(attemptFilename->data, localFilename->data);
 if (renamed != 0)
 {
  ereport(ERROR, (errcode_for_file_access(),
      errmsg("could not rename file \"%s\" to \"%s\": %m",
          attemptFilename->data, localFilename->data)));
 }
}

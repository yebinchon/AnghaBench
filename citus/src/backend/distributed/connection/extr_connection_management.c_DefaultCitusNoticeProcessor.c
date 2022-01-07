
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32 ;
struct TYPE_2__ {char* hostname; int port; } ;
typedef TYPE_1__ MultiConnection ;


 int ApplyLogRedaction (char*) ;
 int CitusNoticeLogLevel ;
 char* TrimLogLevel (char const*) ;
 int ereport (int ,int ) ;
 int errdetail (char*,char*,char*,int ) ;
 int errmsg (char*,int ) ;
 char* strtok (char*,char*) ;

__attribute__((used)) static void
DefaultCitusNoticeProcessor(void *arg, const char *message)
{
 MultiConnection *connection = (MultiConnection *) arg;
 char *nodeName = connection->hostname;
 uint32 nodePort = connection->port;
 char *trimmedMessage = TrimLogLevel(message);
 char *level = strtok((char *) message, ":");

 ereport(CitusNoticeLogLevel,
   (errmsg("%s", ApplyLogRedaction(trimmedMessage)),
    errdetail("%s from %s:%d", level, nodeName, nodePort)));
}

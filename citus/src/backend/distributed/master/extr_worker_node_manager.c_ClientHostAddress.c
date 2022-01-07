
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_12__ {int ss_family; } ;
struct TYPE_9__ {int salen; TYPE_4__ addr; } ;
struct TYPE_11__ {TYPE_1__ raddr; } ;
struct TYPE_10__ {char* data; } ;
typedef TYPE_2__* StringInfo ;
typedef TYPE_3__ Port ;




 TYPE_3__* MyProcPort ;
 int NI_MAXHOST ;
 int NI_NAMEREQD ;
 int appendStringInfo (TYPE_2__*,char*,char*) ;
 char* gai_strerror (int) ;
 TYPE_2__* makeStringInfo () ;
 char* palloc0 (int) ;
 int pg_getnameinfo_all (TYPE_4__*,int ,char*,int,int *,int ,int) ;

__attribute__((used)) static char *
ClientHostAddress(StringInfo clientHostStringInfo)
{
 Port *port = MyProcPort;
 char *clientHost = ((void*)0);
 char *errorMessage = ((void*)0);
 int clientHostLength = NI_MAXHOST;
 int flags = NI_NAMEREQD;
 int nameFound = 0;

 if (port == ((void*)0))
 {
  errorMessage = "cannot find tcp/ip connection to client";
  return errorMessage;
 }

 switch (port->raddr.addr.ss_family)
 {
  case 129:



   {
    break;
   }

  default:
  {
   errorMessage = "invalid address family in connection";
   return errorMessage;
  }
 }

 clientHost = palloc0(clientHostLength);

 nameFound = pg_getnameinfo_all(&port->raddr.addr, port->raddr.salen,
           clientHost, clientHostLength, ((void*)0), 0, flags);
 if (nameFound == 0)
 {
  appendStringInfo(clientHostStringInfo, "%s", clientHost);
 }
 else
 {
  StringInfo errorMessageStringInfo = makeStringInfo();
  appendStringInfo(errorMessageStringInfo, "could not resolve client host: %s",
       gai_strerror(nameFound));

  errorMessage = errorMessageStringInfo->data;
  return errorMessage;
 }

 return errorMessage;
}

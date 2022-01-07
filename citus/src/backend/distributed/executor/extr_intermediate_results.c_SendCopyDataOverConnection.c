
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int len; int data; } ;
typedef TYPE_1__* StringInfo ;
typedef int MultiConnection ;


 int ERROR ;
 int PutRemoteCopyData (int *,int ,int ) ;
 int ReportConnectionError (int *,int ) ;

__attribute__((used)) static void
SendCopyDataOverConnection(StringInfo dataBuffer, MultiConnection *connection)
{
 if (!PutRemoteCopyData(connection, dataBuffer->data, dataBuffer->len))
 {
  ReportConnectionError(connection, ERROR);
 }
}

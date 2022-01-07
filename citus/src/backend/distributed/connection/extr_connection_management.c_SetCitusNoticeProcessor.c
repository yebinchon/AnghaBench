
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int pgConn; } ;
typedef TYPE_1__ MultiConnection ;


 int DefaultCitusNoticeProcessor ;
 int PQsetNoticeProcessor (int ,int ,TYPE_1__*) ;

void
SetCitusNoticeProcessor(MultiConnection *connection)
{
 PQsetNoticeProcessor(connection->pgConn, DefaultCitusNoticeProcessor,
       connection);
}

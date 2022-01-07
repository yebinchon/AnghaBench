
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t int32 ;
typedef int MultiConnection ;


 int ** ClientConnectionArray ;
 size_t INVALID_CONNECTION_ID ;
 size_t MAX_CONNECTION_COUNT ;

__attribute__((used)) static int32
AllocateConnectionId(void)
{
 int32 connectionId = INVALID_CONNECTION_ID;
 int32 connIndex = 0;


 for (connIndex = 0; connIndex < MAX_CONNECTION_COUNT; connIndex++)
 {
  MultiConnection *connection = ClientConnectionArray[connIndex];
  if (connection == ((void*)0))
  {
   connectionId = connIndex;
   break;
  }
 }

 return connectionId;
}

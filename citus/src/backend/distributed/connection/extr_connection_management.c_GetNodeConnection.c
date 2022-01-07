
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32 ;
typedef int int32 ;
typedef int MultiConnection ;


 int * GetNodeUserDatabaseConnection (int ,char const*,int ,int *,int *) ;

MultiConnection *
GetNodeConnection(uint32 flags, const char *hostname, int32 port)
{
 return GetNodeUserDatabaseConnection(flags, hostname, port, ((void*)0), ((void*)0));
}

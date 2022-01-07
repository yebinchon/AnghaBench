
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32 ;
typedef int int32 ;


 char* LOCAL_HOST_NAME ;
 int MultiClientConnect (char const*,int const,char const*,char const*) ;
 int PostPortNumber ;

__attribute__((used)) static int32
ConnectToLocalBackend(const char *databaseName, const char *userName)
{
 const char *nodeName = LOCAL_HOST_NAME;
 const uint32 nodePort = PostPortNumber;





 int32 connectionId = MultiClientConnect(nodeName, nodePort, databaseName, userName);

 return connectionId;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t int32_t ;
struct TYPE_6__ {TYPE_2__* pSql; } ;
struct TYPE_4__ {void* code; } ;
struct TYPE_5__ {TYPE_1__ res; } ;
typedef void TAOS ;
typedef TYPE_3__ STscObj ;


 void* TSDB_CODE_INVALID_CLIENT_VERSION ;
 scalar_t__ strcasecmp (char*,char const*) ;
 scalar_t__ strcmp (char*,char const*) ;
 int strcpy (char*,int ) ;
 int taosGetVersionNumber (char*,int*) ;
 int taos_close (void*) ;
 void* taos_connect_imp (char const*,char const*,char const*,char const*,int,int *,int *,int *) ;
 int taos_get_server_info (void*) ;
 char* tsPrivateIp ;
 char* tsServerIpStr ;
 int tscError (char*,void*,...) ;
 int tscTrace (char*,char const*) ;
 int version ;

TAOS *taos_connect(const char *ip, const char *user, const char *pass, const char *db, int port) {
  if (ip == ((void*)0) || (ip != ((void*)0) && (strcmp("127.0.0.1", ip) == 0 || strcasecmp("localhost", ip) == 0))) {



    ip = tsServerIpStr;

  }
  tscTrace("try to create a connection to %s", ip);

  void *taos = taos_connect_imp(ip, user, pass, db, port, ((void*)0), ((void*)0), ((void*)0));
  if (taos != ((void*)0)) {
    STscObj* pObj = (STscObj*) taos;


    int32_t comparedSegments = 3;
    char client_version[64] = {0};
    char server_version[64] = {0};
    int clientVersionNumber[4] = {0};
    int serverVersionNumber[4] = {0};

    strcpy(client_version, version);
    strcpy(server_version, taos_get_server_info(taos));

    if (!taosGetVersionNumber(client_version, clientVersionNumber)) {
      tscError("taos:%p, invalid client version:%s", taos, client_version);
      pObj->pSql->res.code = TSDB_CODE_INVALID_CLIENT_VERSION;
      taos_close(taos);
      return ((void*)0);
    }

    if (!taosGetVersionNumber(server_version, serverVersionNumber)) {
      tscError("taos:%p, invalid server version:%s", taos, server_version);
      pObj->pSql->res.code = TSDB_CODE_INVALID_CLIENT_VERSION;
      taos_close(taos);
      return ((void*)0);
    }

    for(int32_t i = 0; i < comparedSegments; ++i) {
      if (clientVersionNumber[i] != serverVersionNumber[i]) {
        tscError("taos:%p, the %d-th number of server version:%s not matched with client version:%s, close connection",
                 taos, i, server_version, version);
        pObj->pSql->res.code = TSDB_CODE_INVALID_CLIENT_VERSION;
        taos_close(taos);
        return ((void*)0);
      }
    }
  }

  return taos;
}

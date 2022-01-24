#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  size_t int32_t ;
struct TYPE_6__ {TYPE_2__* pSql; } ;
struct TYPE_4__ {void* code; } ;
struct TYPE_5__ {TYPE_1__ res; } ;
typedef  void TAOS ;
typedef  TYPE_3__ STscObj ;

/* Variables and functions */
 void* TSDB_CODE_INVALID_CLIENT_VERSION ; 
 scalar_t__ FUNC0 (char*,char const*) ; 
 scalar_t__ FUNC1 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int*) ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 
 void* FUNC5 (char const*,char const*,char const*,char const*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (void*) ; 
 char* tsPrivateIp ; 
 char* tsServerIpStr ; 
 int /*<<< orphan*/  FUNC7 (char*,void*,...) ; 
 int /*<<< orphan*/  FUNC8 (char*,char const*) ; 
 int /*<<< orphan*/  version ; 

TAOS *FUNC9(const char *ip, const char *user, const char *pass, const char *db, int port) {
  if (ip == NULL || (ip != NULL && (FUNC1("127.0.0.1", ip) == 0 || FUNC0("localhost", ip) == 0))) {
#ifdef CLUSTER
    ip = tsPrivateIp;
#else
    ip = tsServerIpStr;
#endif
  }
  FUNC8("try to create a connection to %s", ip);

  void *taos = FUNC5(ip, user, pass, db, port, NULL, NULL, NULL);
  if (taos != NULL) {
    STscObj* pObj = (STscObj*) taos;

    // version compare only requires the first 3 segments of the version string
    int32_t comparedSegments = 3;
    char client_version[64] = {0};
    char server_version[64] = {0};
    int clientVersionNumber[4] = {0};
    int serverVersionNumber[4] = {0};

    FUNC2(client_version, version);
    FUNC2(server_version, FUNC6(taos));

    if (!FUNC3(client_version, clientVersionNumber)) {
      FUNC7("taos:%p, invalid client version:%s", taos, client_version);
      pObj->pSql->res.code = TSDB_CODE_INVALID_CLIENT_VERSION;
      FUNC4(taos);
      return NULL;
    }

    if (!FUNC3(server_version, serverVersionNumber)) {
      FUNC7("taos:%p, invalid server version:%s", taos, server_version);
      pObj->pSql->res.code = TSDB_CODE_INVALID_CLIENT_VERSION;
      FUNC4(taos);
      return NULL;
    }

    for(int32_t i = 0; i < comparedSegments; ++i) {
      if (clientVersionNumber[i] != serverVersionNumber[i]) {
        FUNC7("taos:%p, the %d-th number of server version:%s not matched with client version:%s, close connection",
                 taos, i, server_version, version);
        pObj->pSql->res.code = TSDB_CODE_INVALID_CLIENT_VERSION;
        FUNC4(taos);
        return NULL;
      }
    }
  }

  return taos;
}
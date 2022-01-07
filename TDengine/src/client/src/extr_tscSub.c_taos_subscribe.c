
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ int64_t ;
struct TYPE_6__ {char const* name; int mseconds; scalar_t__ lastKey; int numOfFields; int result; int fields; int * taos; struct TYPE_6__* signature; } ;
typedef TYPE_1__ TAOS_SUB ;
typedef int TAOS_FIELD ;
typedef TYPE_1__ SSub ;


 scalar_t__ malloc (int) ;
 int memcpy (int ,int ,int) ;
 int memset (TYPE_1__*,int ,int) ;
 int sprintf (char*,char*,char const*) ;
 int strcpy (char const*,char const*) ;
 scalar_t__ taosGetTimestampMs () ;
 int taos_close (int *) ;
 int * taos_connect (char const*,char const*,char const*,int *,int ) ;
 int taos_errstr (int *) ;
 int taos_fetch_fields (int ) ;
 int taos_init () ;
 int taos_num_fields (int ) ;
 int taos_query (int *,char*) ;
 int taos_use_result (int *) ;
 int tfree (TYPE_1__*) ;
 int tscError (char*,char const*) ;
 int tscTrace (char*,int ) ;

TAOS_SUB *taos_subscribe(const char *host, const char *user, const char *pass, const char *db, const char *name, int64_t time, int mseconds) {
  SSub *pSub;

  pSub = (SSub *)malloc(sizeof(SSub));
  if (pSub == ((void*)0)) return ((void*)0);
  memset(pSub, 0, sizeof(SSub));

  pSub->signature = pSub;
  strcpy(pSub->name, name);
  pSub->mseconds = mseconds;
  pSub->lastKey = time;
  if (pSub->lastKey == 0) {
    pSub->lastKey = taosGetTimestampMs();
  }

  taos_init();
  pSub->taos = taos_connect(host, user, pass, ((void*)0), 0);
  if (pSub->taos == ((void*)0)) {
    tfree(pSub);
  } else {
    char qstr[128];
    sprintf(qstr, "use %s", db);
    int res = taos_query(pSub->taos, qstr);
    if (res != 0) {
      tscError("failed to open DB:%s", db);
      taos_close(pSub->taos);
      tfree(pSub);
    } else {
      sprintf(qstr, "select * from %s where _c0 > now+1000d", pSub->name);
      if (taos_query(pSub->taos, qstr)) {
        tscTrace("failed to select, reason:%s", taos_errstr(pSub->taos));
        taos_close(pSub->taos);
        tfree(pSub);
        return ((void*)0);
      }
      pSub->result = taos_use_result(pSub->taos);
      pSub->numOfFields = taos_num_fields(pSub->result);
      memcpy(pSub->fields, taos_fetch_fields(pSub->result), sizeof(TAOS_FIELD) * pSub->numOfFields);
    }
  }

  return pSub;
}

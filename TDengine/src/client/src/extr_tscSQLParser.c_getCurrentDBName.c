
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int n; int z; } ;
struct TYPE_7__ {TYPE_1__* pTscObj; } ;
struct TYPE_6__ {int db; } ;
typedef TYPE_2__ SSqlObj ;
typedef TYPE_3__ SSQLToken ;


 int strlen (int ) ;

__attribute__((used)) static void getCurrentDBName(SSqlObj* pSql, SSQLToken* pDBToken) {
  pDBToken->z = pSql->pTscObj->db;
  pDBToken->n = strlen(pSql->pTscObj->db);
}

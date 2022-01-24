#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int int32_t ;
struct TYPE_10__ {int /*<<< orphan*/  member_0; } ;
struct TYPE_9__ {int /*<<< orphan*/  sqlstr; int /*<<< orphan*/  cmd; int /*<<< orphan*/ * fp; int /*<<< orphan*/ * fetchFp; } ;
typedef  TYPE_1__ SSqlObj ;
typedef  TYPE_2__ SSqlInfo ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int TSDB_CODE_SUCCESS ; 
 int /*<<< orphan*/  TSDB_DEFAULT_PAYLOAD_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,char*,char*) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * tscAsyncInsertMultiVnodesProxy ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 int FUNC8 (TYPE_1__*,TYPE_2__*) ; 

int FUNC9(SSqlObj *pSql, char *acct, char *db, bool multiVnodeInsertion) {
  int32_t ret = TSDB_CODE_SUCCESS;

  // must before clean the sqlcmd object
  FUNC7(&pSql->cmd, false);
  FUNC5(&pSql->cmd);

  if (FUNC6(pSql->sqlstr)) {
    /*
     * only for async multi-vnode insertion
     * Set the fp before parse the sql string, in case of getmetermeta failed, in which
     * the error handle callback function can rightfully restore the user defined function (fp)
     */
    if (pSql->fp != NULL && multiVnodeInsertion) {
      FUNC1(pSql->fetchFp == NULL);
      pSql->fetchFp = pSql->fp;

      // replace user defined callback function with multi-insert proxy function
      pSql->fp = tscAsyncInsertMultiVnodesProxy;
    }

    ret = FUNC3(pSql, pSql->sqlstr, acct, db);
  } else {
    ret = FUNC4(&pSql->cmd, TSDB_DEFAULT_PAYLOAD_SIZE);
    if (TSDB_CODE_SUCCESS != ret) return ret;
    
    SSqlInfo SQLInfo = {0};
    FUNC2(&SQLInfo, pSql->sqlstr);

    ret = FUNC8(pSql, &SQLInfo);
    FUNC0(&SQLInfo);
  }

  /*
   * the pRes->code may be modified or even released by another thread in tscMeterMetaCallBack
   * function, so do NOT use pRes->code to determine if the getMeterMeta/getMetricMeta function
   * invokes new threads to get data from mnode or simply retrieves data from cache.
   *
   * do NOT assign return code to pRes->code for the same reason for it may be released by another thread
   * pRes->code = ret;
   */
  return ret;
}
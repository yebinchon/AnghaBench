#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sql ;
typedef  int /*<<< orphan*/  pthread_t ;
struct TYPE_5__ {char* server_ip; char* db_name; char* tbl_name; } ;
typedef  TYPE_1__ param ;
typedef  int /*<<< orphan*/  TAOS_STREAM ;
typedef  int /*<<< orphan*/  TAOS ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int g_thread_exit_flag ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ insert_rows ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void* (*) (void*),TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  stdin ; 
 int /*<<< orphan*/  FUNC10 (char*,char*) ; 
 int /*<<< orphan*/  streamCallBack ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC13 (char*,char*,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/ * FUNC15 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int FUNC16(int argc, char *argv[]) 
{
  TAOS       *taos;
  char        db_name[64];
  char        tbl_name[64];
  char        sql[1024] = { 0 };

  if (argc != 4) {
    FUNC6("usage: %s server-ip dbname tblname\n", argv[0]);
    FUNC0(0);
  } 

  // init TAOS
  FUNC14();

  FUNC10(db_name, argv[2]);
  FUNC10(tbl_name, argv[3]);
  
  // create pthread to insert into row per second for stream calc
  param *t_param = (param *)FUNC4(sizeof(param));
  if (NULL == t_param)
  {
    FUNC6("failed to malloc\n");
    FUNC0(1);
  }
  FUNC5(t_param, 0, sizeof(param)); 
  FUNC10(t_param->server_ip, argv[1]);
  FUNC10(t_param->db_name, db_name);
  FUNC10(t_param->tbl_name, tbl_name);

  pthread_t pid;
  FUNC7(&pid, NULL, (void * (*)(void *))insert_rows, t_param);

  FUNC9(3); // waiting for database is created.
  // open connection to database
  taos = FUNC13(argv[1], "root", "taosdata", db_name, 0);
  if (taos == NULL) {
    FUNC6("failed to connet to server:%s\n", argv[1]);
	  FUNC2(t_param);
    FUNC0(1);
  }

  // starting stream calc, 
  FUNC6("please input stream SQL:[e.g., select count(*) from tblname interval(5s) sliding(2s);]\n");
  FUNC1(sql, sizeof(sql), stdin);
  if (sql[0] == 0) {
    FUNC6("input NULL stream SQL, so exit!\n");	
    FUNC2(t_param);
    FUNC0(1);
  }

  // param is set to NULL in this demo, it shall be set to the pointer to app context 
  TAOS_STREAM *pStream = FUNC15(taos, sql, streamCallBack, 0, NULL, NULL);
  if (NULL == pStream) {
    FUNC6("failed to create stream\n");	
    FUNC2(t_param);
    FUNC0(1);
  }
  
  FUNC6("presss any key to exit\n");
  FUNC3();

  FUNC12(pStream);
  
  g_thread_exit_flag = 1;  
  FUNC8(pid, NULL);

  FUNC11(taos);
  FUNC2(t_param); 

  return 0;
}
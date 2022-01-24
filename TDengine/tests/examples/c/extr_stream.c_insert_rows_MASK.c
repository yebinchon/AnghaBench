#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {char* server_ip; char* db_name; char* tbl_name; } ;
typedef  TYPE_1__ param ;
typedef  int /*<<< orphan*/  TAOS ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ g_thread_exit_flag ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (char*,char*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char* FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,char*) ; 

void* FUNC8(void *sarg)
{
  TAOS  *taos;
  char    command[1024] = { 0 };
  param  *winfo = (param * )sarg;

  if (NULL == winfo){
  	FUNC1("para is null!\n");
    FUNC0(1);
  }

  taos = FUNC5(winfo->server_ip, "root", "taosdata", NULL, 0);
  if (taos == NULL) {
    FUNC1("failed to connet to server:%s\n", winfo->server_ip);
    FUNC0(1);
  }
  
  // drop database
  FUNC3(command, "drop database %s;", winfo->db_name);
  if (FUNC7(taos, command) != 0) {
    FUNC1("failed to drop database, reason:%s\n", FUNC6(taos));
    FUNC0(1);
  }

  // create database
  FUNC3(command, "create database %s;", winfo->db_name);
  if (FUNC7(taos, command) != 0) {
    FUNC1("failed to create database, reason:%s\n", FUNC6(taos));
    FUNC0(1);
  }

  // use database
  FUNC3(command, "use %s;", winfo->db_name);
  if (FUNC7(taos, command) != 0) {
    FUNC1("failed to use database, reason:%s\n", FUNC6(taos));
    FUNC0(1);
  }

  // create table
  FUNC3(command, "create table %s (ts timestamp, speed int);", winfo->tbl_name);
  if (FUNC7(taos, command) != 0) {
    FUNC1("failed to create table, reason:%s\n", FUNC6(taos));
    FUNC0(1);
  }

  // insert data
  int index = 0;  
  while (1) {
    if (g_thread_exit_flag) break;
	
    index++;
    FUNC3(command, "insert into %s values (%ld, %d)", winfo->tbl_name, 1546300800000+index*1000, index);
    if (FUNC7(taos, command)) {
      FUNC1("failed to insert row [%s], reason:%s\n", command, FUNC6(taos));
    }
    FUNC2(1);
  }  

  FUNC4(taos);
  return 0;
}
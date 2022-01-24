#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_5__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  pthread_attr_t ;
typedef  scalar_t__ int64_t ;
struct TYPE_6__ {int threadId; int sID; int eID; int /*<<< orphan*/  pid; } ;
typedef  TYPE_1__ ThreadObj ;
struct TYPE_8__ {int writeClients; char* dataDir; int filesNum; int rowsPerRequest; } ;
struct TYPE_7__ {scalar_t__ totalRows; } ;

/* Variables and functions */
 int /*<<< orphan*/  PTHREAD_CREATE_JOINABLE ; 
 TYPE_5__ arguments ; 
 TYPE_1__* FUNC0 (size_t,int) ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void* (*) (void*),TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_2__ statis ; 
 void* FUNC7 (char*,char*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (void*) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int FUNC10 (void*,char*) ; 
 scalar_t__ writeDataImp ; 

void FUNC11() {
  FUNC2("write data\n");
  FUNC2("---- writeClients: %d\n", arguments.writeClients);
  FUNC2("---- dataDir: %s\n", arguments.dataDir);
  FUNC2("---- numOfFiles: %d\n", arguments.filesNum);
  FUNC2("---- rowsPerRequest: %d\n", arguments.rowsPerRequest);

  FUNC9();

  void *taos = FUNC7("127.0.0.1", "root", "taosdata", NULL, 0);
  if (taos == NULL)
    FUNC8(taos);

  int code = FUNC10(taos, "create database if not exists db");
  if (code != 0) {
    FUNC8(taos);
  }

  code = FUNC10(taos, "create table if not exists db.devices(ts timestamp, temperature int, humidity float) "
    "tags(devid int, devname binary(16), devgroup int)");
  if (code != 0) {
    FUNC8(taos);
  }

  int64_t st = FUNC1();

  int a = arguments.filesNum / arguments.writeClients;
  int b = arguments.filesNum % arguments.writeClients;
  int last = 0;

  ThreadObj *threads = FUNC0((size_t)arguments.writeClients, sizeof(ThreadObj));
  for (int i = 0; i < arguments.writeClients; ++i) {
    ThreadObj *pthread = threads + i;
    pthread_attr_t thattr;
    pthread->threadId = i + 1;
    pthread->sID = last;
    if (i < b) {
      pthread->eID = last + a;
    } else {
      pthread->eID = last + a - 1;
    }
    last = pthread->eID + 1;
    FUNC3(&thattr);
    FUNC4(&thattr, PTHREAD_CREATE_JOINABLE);
    FUNC5(&pthread->pid, &thattr, (void *(*)(void *))writeDataImp, pthread);
  }

  for (int i = 0; i < arguments.writeClients; i++) {
    FUNC6(threads[i].pid, NULL);
  }

  int64_t elapsed = FUNC1() - st;
  float seconds = (float)elapsed / 1000;
  float rs = (float)statis.totalRows / seconds;

  FUNC2("---- Spent %f seconds to insert %ld records, speed: %f Rows/Second\n", seconds, statis.totalRows, rs);
}
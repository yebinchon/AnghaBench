
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TSDB_DEFAULT_LOG_BUF_SIZE ;
 int * logHandle ;
 int * taosLogBuffNew (int ) ;
 scalar_t__ taosOpenLogFileWithMaxLines (char*,int,int) ;
 scalar_t__ taosStartLog () ;

int taosInitLog(char *logName, int numOfLogLines, int maxFiles) {
  logHandle = taosLogBuffNew(TSDB_DEFAULT_LOG_BUF_SIZE);
  if (logHandle == ((void*)0)) return -1;

  if (taosOpenLogFileWithMaxLines(logName, numOfLogLines, maxFiles) < 0) return -1;

  if (taosStartLog() < 0) return -1;
  return 0;
}

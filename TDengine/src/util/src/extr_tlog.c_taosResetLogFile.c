
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LOG_FILE_NAME_LEN ;
 int pPrint (char*) ;
 int remove (char*) ;
 int sprintf (char*,char*,char*,int) ;
 int taosLogFlag ;
 scalar_t__ taosLogLines ;
 scalar_t__ taosLogMaxLines ;
 char* taosLogName ;
 int taosOpenNewLogFile () ;

void taosResetLogFile() {
  char lastName[LOG_FILE_NAME_LEN];
  sprintf(lastName, "%s.%d", taosLogName, taosLogFlag);


  taosLogLines = taosLogMaxLines + 10;

  taosOpenNewLogFile();
  remove(lastName);

  pPrint("==================================");
  pPrint("   reset log file ");
}

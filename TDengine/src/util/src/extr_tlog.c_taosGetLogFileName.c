
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LOG_FILE_NAME_LEN ;
 int sprintf (char*,char*,char*,int) ;
 int strcpy (char*,char*) ;
 int taosCheckFileIsOpen (char*) ;
 int taosLogFileNum ;
 char* taosLogName ;

void taosGetLogFileName(char *fn) {
  if (taosLogFileNum > 1) {
    for (int i = 0; i < taosLogFileNum; i++) {
      char fileName[LOG_FILE_NAME_LEN];

      sprintf(fileName, "%s%d.0", fn, i);
      bool file1open = taosCheckFileIsOpen(fileName);

      sprintf(fileName, "%s%d.1", fn, i);
      bool file2open = taosCheckFileIsOpen(fileName);

      if (!file1open && !file2open) {
        sprintf(taosLogName, "%s%d", fn, i);
        return;
      }
    }
  }

  strcpy(taosLogName, fn);
}

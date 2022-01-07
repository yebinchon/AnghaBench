
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LC_CTYPE ;
 int exit (int) ;
 int pPrint (char*,...) ;
 int printf (char*,char*) ;
 char* setlocale (int ,char*) ;
 scalar_t__ strlen (char*) ;
 int taosValidateEncodec (char*) ;
 char* tsCharset ;
 char* tsLocale ;

void tsSetLocale() {
  char msgLocale[] = "Invalid locale:%s, please set the valid locale in config file";
  char msgCharset[] = "Invalid charset:%s, please set the valid charset in config file";
  char msgCharset1[] = "failed to get charset, please set the valid charset in config file";

  char *locale = setlocale(LC_CTYPE, tsLocale);


  if (locale == ((void*)0)) {
    printf(msgLocale, tsLocale);
    pPrint(msgLocale, tsLocale);
  }

  if (strlen(tsCharset) == 0) {
    printf("%s\n", msgCharset1);
    pPrint(msgCharset1);
    exit(-1);
  }

  if (!taosValidateEncodec(tsCharset)) {
    printf(msgCharset, tsCharset);
    pPrint(msgCharset, tsCharset);
    exit(-1);
  }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;


 int MAX_COMMAND_SIZE ;
 scalar_t__ calloc (int,int ) ;
 int free (int *) ;
 int mbstowcs (int *,char const*,int ) ;
 int strlen (char const*) ;
 int wcswidth (int *,int ) ;

void getMbSizeInfo(const char *str, int *size, int *width) {
  wchar_t *wc = (wchar_t *)calloc(sizeof(wchar_t), MAX_COMMAND_SIZE);
  *size = strlen(str);
  mbstowcs(wc, str, MAX_COMMAND_SIZE);
  *width = wcswidth(wc, MAX_COMMAND_SIZE);
  free(wc);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ isCharInDelimiter (char,char*) ;

char *tscGetTokenDelimiter(char *string, char **token, int *tokenLen, char *delimiters) {
  while (*string != 0) {
    if (isCharInDelimiter(*string, delimiters)) {
      ++string;
    } else {
      break;
    }
  }

  *token = string;

  char *str = string;
  *tokenLen = 0;
  while (*str != 0) {
    if (!isCharInDelimiter(*str, delimiters)) {
      *tokenLen = *tokenLen + 1;
      str++;
    } else {
      break;
    }
  }

  return string;
}

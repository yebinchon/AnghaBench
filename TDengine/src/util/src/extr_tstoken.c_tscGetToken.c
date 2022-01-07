
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__* delimiter ;
 scalar_t__* operator ;
 int shiftStr (char*,char*) ;

char *tscGetToken(char *string, char **token, int *tokenLen) {
  char quote = 0;

  while (*string != 0) {
    if (delimiter[*string]) {
      ++string;
    } else {
      break;
    }
  }

  char quotaChar = 0;
  if (*string == '\'' || *string == '\"') {
    quote = 1;
    quotaChar = *string;
    string++;
  }

  *token = string;

  if (*string > 0 && operator[*string] && quote == 0) {
    string++;


    if (operator[*string] &&(*string != '(' && *string != ')' && *string != '-' && *string != '+'))
      *tokenLen = 2;
    else
      *tokenLen = 1;
    return *token + *tokenLen;
  }

  while (*string != 0) {
    if (quote) {

      if (*string == quotaChar) {
        if (*(string - 1) != '\\') {
          break;
        } else {
          shiftStr(string - 1, string);
        }
      } else {
        ++string;
      }
    } else {
      if (delimiter[*string]) break;

      if (operator[*string]) break;

      ++string;
    }
  }

  *tokenLen = (int)(string - *token);

  if (quotaChar != 0 && *string != 0 && *(string + 1) != 0) {
    return string + 1;
  } else {
    return string;
  }
}

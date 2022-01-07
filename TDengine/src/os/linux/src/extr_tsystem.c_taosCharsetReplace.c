
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t int32_t ;
struct TYPE_3__ {char* member_0; char* member_1; char* newCharset; int oldCharset; } ;
typedef TYPE_1__ CharsetPair ;


 scalar_t__ strcasecmp (int ,char*) ;
 char* strdup (char*) ;
 size_t tListLen (TYPE_1__*) ;

char *taosCharsetReplace(char *charsetstr) {
  CharsetPair charsetRep[] = {
      {"utf8", "UTF-8"}, {"936", "CP936"},
  };

  for (int32_t i = 0; i < tListLen(charsetRep); ++i) {
    if (strcasecmp(charsetRep[i].oldCharset, charsetstr) == 0) {
      return strdup(charsetRep[i].newCharset);
    }
  }

  return strdup(charsetstr);
}

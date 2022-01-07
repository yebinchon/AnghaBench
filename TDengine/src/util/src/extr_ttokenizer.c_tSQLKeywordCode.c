
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int int32_t ;
struct TYPE_5__ {scalar_t__ name; int len; } ;
struct TYPE_4__ {int type; } ;
typedef TYPE_1__ SKeyword ;


 int KeywordHashTable ;
 int POINTER_BYTES ;
 int TK_ID ;
 TYPE_2__* keywordTable ;
 int mutex ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int strlen (scalar_t__) ;
 int tListLen (TYPE_2__*) ;
 int taosAddStrHash (int ,char*,void*) ;
 scalar_t__ taosGetStrHashData (int ,char*) ;
 int taosHashStringStep1 ;
 int taosInitStrHash (int,int ,int ) ;

int tSQLKeywordCode(const char* z, int n) {
  int i;
  static char needInit = 1;
  if (needInit) {

    pthread_mutex_lock(&mutex);


    if (needInit) {
      int nk = tListLen(keywordTable);

      KeywordHashTable = taosInitStrHash(nk, POINTER_BYTES, taosHashStringStep1);
      for (i = 0; i < nk; i++) {
        keywordTable[i].len = strlen(keywordTable[i].name);
        void* ptr = &keywordTable[i];
        taosAddStrHash(KeywordHashTable, (char*)keywordTable[i].name, (void*)&ptr);
      }
      needInit = 0;
    }
    pthread_mutex_unlock(&mutex);
  }

  char key[128] = {0};
  for (int32_t j = 0; j < n; ++j) {
    if (z[j] >= 'a' && z[j] <= 'z') {
      key[j] = (char)(z[j] & 0xDF);
    } else {
      key[j] = z[j];
    }
  }

  SKeyword** pKey = (SKeyword**)taosGetStrHashData(KeywordHashTable, key);
  if (pKey != ((void*)0)) {
    return (*pKey)->type;
  } else {
    return TK_ID;
  }
}

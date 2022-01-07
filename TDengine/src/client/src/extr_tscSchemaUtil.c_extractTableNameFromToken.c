
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* z; int n; } ;
typedef TYPE_1__ SSQLToken ;


 char* TS_PATH_DELIMITER ;
 char* strnchr (char*,char const,int,int) ;

void extractTableNameFromToken(SSQLToken* pToken, SSQLToken* pTable) {
  const char sep = TS_PATH_DELIMITER[0];

  if (pToken == pTable || pToken == ((void*)0) || pTable == ((void*)0)) {
    return;
  }

  char* r = strnchr(pToken->z, sep, pToken->n, 0);

  if (r != ((void*)0)) {
    pTable->n = r - pToken->z;
    pTable->z = pToken->z;

    r += 1;
    pToken->n -= (r - pToken->z);
    pToken->z = r;
  }
}

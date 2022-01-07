
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct _ht {int count; TYPE_1__* chain; } ;
struct TYPE_7__ {int count; TYPE_1__* first; struct _ht* ht; } ;
struct TYPE_6__ {int nKey; struct TYPE_6__* next; int pKey; } ;
typedef TYPE_1__ HashElem ;
typedef TYPE_2__ Hash ;


 scalar_t__ ALWAYS (TYPE_1__*) ;
 scalar_t__ sqlite3StrNICmp (int ,char const*,int) ;

__attribute__((used)) static HashElem *findElementGivenHash(
  const Hash *pH,
  const char *pKey,
  int nKey,
  unsigned int h
){
  HashElem *elem;
  int count;

  if( pH->ht ){
    struct _ht *pEntry = &pH->ht[h];
    elem = pEntry->chain;
    count = pEntry->count;
  }else{
    elem = pH->first;
    count = pH->count;
  }
  while( count-- && ALWAYS(elem) ){
    if( elem->nKey==nKey && sqlite3StrNICmp(elem->pKey,pKey,nKey)==0 ){
      return elem;
    }
    elem = elem->next;
  }
  return 0;
}

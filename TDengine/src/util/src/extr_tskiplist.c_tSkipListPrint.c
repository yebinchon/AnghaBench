
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {char* pz; int dKey; int i64Key; } ;
struct TYPE_8__ {struct TYPE_8__** pForward; TYPE_2__ key; } ;
typedef TYPE_3__ tSkipListNode ;
struct TYPE_6__ {TYPE_3__** pForward; } ;
struct TYPE_9__ {int nLevel; int keyType; TYPE_1__ pHead; } ;
typedef TYPE_4__ tSkipList ;
typedef int int32_t ;
typedef int int16_t ;
 int fprintf (int ,char*,...) ;
 int stdout ;

void tSkipListPrint(tSkipList *pSkipList, int16_t nlevel) {
  if (pSkipList == ((void*)0) || pSkipList->nLevel < nlevel || nlevel <= 0) {
    return;
  }

  tSkipListNode *p = pSkipList->pHead.pForward[nlevel - 1];
  int32_t id = 1;
  while (p) {
    switch (pSkipList->keyType) {
      case 130:
      case 129:
      case 128:
      case 133:
        fprintf(stdout, "%d: %lld \n", id++, p->key.i64Key);
        break;
      case 132:
        fprintf(stdout, "%d: %s \n", id++, p->key.pz);
        break;
      case 131:
        fprintf(stdout, "%d: %lf \n", id++, p->key.dKey);
        break;
      default:
        fprintf(stdout, "\n");
    }
    p = p->pForward[nlevel - 1];
  }
}

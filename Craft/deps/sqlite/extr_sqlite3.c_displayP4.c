
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_9__ ;
typedef struct TYPE_18__ TYPE_8__ ;
typedef struct TYPE_17__ TYPE_7__ ;
typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_14__ {int pModule; } ;
typedef TYPE_4__ sqlite3_vtab ;
struct TYPE_19__ {char* zName; } ;
struct TYPE_18__ {int nArg; int zName; } ;
struct TYPE_17__ {int nField; int * aSortOrder; TYPE_9__** aColl; } ;
struct TYPE_11__ {int i; } ;
struct TYPE_16__ {int flags; char* z; int r; TYPE_1__ u; } ;
struct TYPE_13__ {char* z; TYPE_2__* pVtab; TYPE_6__* pMem; int * pReal; int i; int * pI64; TYPE_8__* pFunc; TYPE_9__* pColl; TYPE_7__* pKeyInfo; } ;
struct TYPE_15__ {int p4type; TYPE_3__ p4; } ;
struct TYPE_12__ {TYPE_4__* pVtab; } ;
typedef TYPE_5__ Op ;
typedef TYPE_6__ Mem ;
typedef TYPE_7__ KeyInfo ;
typedef TYPE_8__ FuncDef ;
typedef TYPE_9__ CollSeq ;


 int MEM_Blob ;
 int MEM_Int ;
 int MEM_Null ;
 int MEM_Real ;
 int MEM_Str ;
 int assert (int) ;
 int memcpy (char*,char const*,int) ;
 int sqlite3Strlen30 (char const*) ;
 int sqlite3_snprintf (int,char*,char*,...) ;

__attribute__((used)) static char *displayP4(Op *pOp, char *zTemp, int nTemp){
  char *zP4 = zTemp;
  assert( nTemp>=20 );
  switch( pOp->p4type ){
    case 132:
    case 133: {
      int i, j;
      KeyInfo *pKeyInfo = pOp->p4.pKeyInfo;
      assert( pKeyInfo->aSortOrder!=0 );
      sqlite3_snprintf(nTemp, zTemp, "keyinfo(%d", pKeyInfo->nField);
      i = sqlite3Strlen30(zTemp);
      for(j=0; j<pKeyInfo->nField; j++){
        CollSeq *pColl = pKeyInfo->aColl[j];
        const char *zColl = pColl ? pColl->zName : "nil";
        int n = sqlite3Strlen30(zColl);
        if( i+n>nTemp-6 ){
          memcpy(&zTemp[i],",...",4);
          break;
        }
        zTemp[i++] = ',';
        if( pKeyInfo->aSortOrder[j] ){
          zTemp[i++] = '-';
        }
        memcpy(&zTemp[i], zColl, n+1);
        i += n;
      }
      zTemp[i++] = ')';
      zTemp[i] = 0;
      assert( i<nTemp );
      break;
    }
    case 138: {
      CollSeq *pColl = pOp->p4.pColl;
      sqlite3_snprintf(nTemp, zTemp, "collseq(%.20s)", pColl->zName);
      break;
    }
    case 137: {
      FuncDef *pDef = pOp->p4.pFunc;
      sqlite3_snprintf(nTemp, zTemp, "%s(%d)", pDef->zName, pDef->nArg);
      break;
    }
    case 135: {
      sqlite3_snprintf(nTemp, zTemp, "%lld", *pOp->p4.pI64);
      break;
    }
    case 136: {
      sqlite3_snprintf(nTemp, zTemp, "%d", pOp->p4.i);
      break;
    }
    case 130: {
      sqlite3_snprintf(nTemp, zTemp, "%.16g", *pOp->p4.pReal);
      break;
    }
    case 131: {
      Mem *pMem = pOp->p4.pMem;
      if( pMem->flags & MEM_Str ){
        zP4 = pMem->z;
      }else if( pMem->flags & MEM_Int ){
        sqlite3_snprintf(nTemp, zTemp, "%lld", pMem->u.i);
      }else if( pMem->flags & MEM_Real ){
        sqlite3_snprintf(nTemp, zTemp, "%.16g", pMem->r);
      }else if( pMem->flags & MEM_Null ){
        sqlite3_snprintf(nTemp, zTemp, "NULL");
      }else{
        assert( pMem->flags & MEM_Blob );
        zP4 = "(blob)";
      }
      break;
    }

    case 128: {
      sqlite3_vtab *pVtab = pOp->p4.pVtab->pVtab;
      sqlite3_snprintf(nTemp, zTemp, "vtab:%p:%p", pVtab, pVtab->pModule);
      break;
    }

    case 134: {
      sqlite3_snprintf(nTemp, zTemp, "intarray");
      break;
    }
    case 129: {
      sqlite3_snprintf(nTemp, zTemp, "program");
      break;
    }
    case 139: {
      zTemp[0] = 0;
      break;
    }
    default: {
      zP4 = pOp->p4.z;
      if( zP4==0 ){
        zP4 = zTemp;
        zTemp[0] = 0;
      }
    }
  }
  assert( zP4!=0 );
  return zP4;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ key; scalar_t__ lastKey; int importedRows; scalar_t__ firstKey; TYPE_1__* pObj; } ;
struct TYPE_9__ {scalar_t__ lastKeyOnFile; int meterId; int sid; int vnode; } ;
typedef TYPE_1__ SMeterObj ;
typedef TYPE_2__ SImportInfo ;


 int dTrace (char*,int ,int ,int ) ;
 int vnodeFindKeyInCache (TYPE_2__*,int ) ;
 int vnodeGetImportEndPart (TYPE_1__*,char*,int,char**,scalar_t__) ;
 int vnodeImportStartToCache (TYPE_2__*,char*,int) ;
 int vnodeImportStartToFile (TYPE_2__*,char*,int) ;
 int vnodeImportToCache (TYPE_2__*,char*,int) ;

int vnodeImportWholeToCache(SImportInfo *pImport, char *payload, int rows) {
  int code = 0;
  SMeterObj *pObj = pImport->pObj;

  code = vnodeFindKeyInCache(pImport, 0);
  if (code != 0) return code;

  if (pImport->key != pImport->lastKey) {
    char *pStart;
    if ( pImport->key < pObj->lastKeyOnFile ) pImport->key = pObj->lastKeyOnFile;
    rows = vnodeGetImportEndPart(pObj, payload, rows, &pStart, pImport->key);
    pImport->importedRows = rows;
    code = vnodeImportToCache(pImport, pStart, rows);
  } else {
    if (pImport->firstKey > pObj->lastKeyOnFile) {
      code = vnodeImportStartToCache(pImport, payload, rows);
    } else if (pImport->firstKey < pObj->lastKeyOnFile) {
      code = vnodeImportStartToFile(pImport, payload, rows);
    } else {
      dTrace("vid:%d sid:%d id:%s, data is already there", pObj->vnode, pObj->sid, pObj->meterId);
    }
  }

  return code;
}

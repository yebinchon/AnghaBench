
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {char* payload; int rows; int importedRows; int key; int firstKey; TYPE_1__* pObj; } ;
struct TYPE_7__ {int meterId; int sid; int vnode; } ;
typedef TYPE_1__ SMeterObj ;
typedef TYPE_2__ SImportInfo ;


 int dTrace (char*,int ,int ,int ) ;
 int vnodeFindKeyInFile (TYPE_2__*,int) ;
 int vnodeGetImportStartPart (TYPE_1__*,char*,int,int ) ;
 int vnodeImportToFile (TYPE_2__*) ;

int vnodeImportStartToFile(SImportInfo *pImport, char *payload, int rows) {
  int code = 0;
  SMeterObj *pObj = pImport->pObj;

  code = vnodeFindKeyInFile(pImport, 1);
  if (code != 0) return code;

  if (pImport->key != pImport->firstKey) {
    pImport->payload = payload;
    pImport->rows = vnodeGetImportStartPart(pObj, payload, rows, pImport->key);
    pImport->importedRows = pImport->rows;
    code = vnodeImportToFile(pImport);
  } else {
    dTrace("vid:%d sid:%d id:%s, data is already imported to file", pObj->vnode, pObj->sid, pObj->meterId);
  }

  return code;
}

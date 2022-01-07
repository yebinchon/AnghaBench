
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {char* payload; int rows; int importedRows; int key; int lastKey; int * pObj; } ;
typedef int SMeterObj ;
typedef TYPE_1__ SImportInfo ;


 int vnodeFindKeyInFile (TYPE_1__*,int ) ;
 int vnodeGetImportEndPart (int *,char*,int,char**,int ) ;
 int vnodeImportStartToFile (TYPE_1__*,char*,int) ;
 int vnodeImportToFile (TYPE_1__*) ;

int vnodeImportWholeToFile(SImportInfo *pImport, char *payload, int rows) {
  int code = 0;
  SMeterObj *pObj = pImport->pObj;

  code = vnodeFindKeyInFile(pImport, 0);
  if (code != 0) return code;

  if (pImport->key != pImport->lastKey) {
    pImport->payload = payload;
    pImport->rows = vnodeGetImportEndPart(pObj, payload, rows, &pImport->payload, pImport->key);
    pImport->importedRows = pImport->rows;
    code = vnodeImportToFile(pImport);
  } else {
    code = vnodeImportStartToFile(pImport, payload, rows);
  }

  return code;
}

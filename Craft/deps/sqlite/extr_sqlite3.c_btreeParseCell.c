
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int MemPage ;
typedef int CellInfo ;


 int parseCell (int *,int,int *) ;

__attribute__((used)) static void btreeParseCell(
  MemPage *pPage,
  int iCell,
  CellInfo *pInfo
){
  parseCell(pPage, iCell, pInfo);
}

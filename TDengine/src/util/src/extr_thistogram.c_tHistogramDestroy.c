
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SHistogramInfo ;


 int free (int *) ;

void tHistogramDestroy(SHistogramInfo** pHisto) {
  if (*pHisto == ((void*)0)) {
    return;
  }

  free(*pHisto);
  *pHisto = ((void*)0);
}

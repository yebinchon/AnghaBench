
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef enum MessageType { ____Placeholder_MessageType } MessageType ;


 int GetLocalizedMessageOffset () ;
 int LoadStringW (int ,int,int *,int) ;
 scalar_t__ calloc (int,int) ;
 int hDllInstance ;

wchar_t *LoadMessageW(enum MessageType e){
 wchar_t *pTmp=(wchar_t*)calloc(sizeof(wchar_t),1024);
 LoadStringW(hDllInstance,GetLocalizedMessageOffset()+e,pTmp,1024);
 return pTmp;
}

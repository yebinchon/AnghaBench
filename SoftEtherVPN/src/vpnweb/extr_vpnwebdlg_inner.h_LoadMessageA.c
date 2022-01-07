
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum MessageType { ____Placeholder_MessageType } MessageType ;


 int GetLocalizedMessageOffset () ;
 int LoadStringA (int ,int,char*,int) ;
 scalar_t__ calloc (int,int) ;
 int hDllInstance ;

char *LoadMessageA(enum MessageType e){
 char *pTmp=(char*)calloc(sizeof(char),1024);
 LoadStringA(hDllInstance,GetLocalizedMessageOffset()+e,pTmp,1024);
 return pTmp;
}

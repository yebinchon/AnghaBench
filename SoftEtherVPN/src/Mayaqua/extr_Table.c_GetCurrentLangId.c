
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int e ;
typedef int UINT ;
struct TYPE_4__ {int Id; } ;
typedef TYPE_1__ LANGLIST ;


 int GetCurrentLang (TYPE_1__*) ;
 int Zero (TYPE_1__*,int) ;

UINT GetCurrentLangId()
{
 LANGLIST e;

 Zero(&e, sizeof(e));

 GetCurrentLang(&e);

 return e.Id;
}

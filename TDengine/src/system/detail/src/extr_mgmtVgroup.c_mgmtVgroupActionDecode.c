
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* updateEnd; } ;
typedef TYPE_1__ SVgObj ;


 scalar_t__ malloc (int) ;
 int memcpy (TYPE_1__*,char*,int) ;
 int memset (TYPE_1__*,int ,int) ;

void *mgmtVgroupActionDecode(void *row, char *str, int size, int *ssize) {
  SVgObj *pVgroup = (SVgObj *)malloc(sizeof(SVgObj));
  if (pVgroup == ((void*)0)) return ((void*)0);
  memset(pVgroup, 0, sizeof(SVgObj));

  int tsize = pVgroup->updateEnd - (char *)pVgroup;
  memcpy(pVgroup, str, tsize);

  return (void *)pVgroup;
}

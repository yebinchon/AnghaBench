
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ UINT64 ;
struct TYPE_3__ {scalar_t__ MinFreeSpace; int DirName; } ;
typedef TYPE_1__ ERASER ;


 int GetDiskFree (int ,scalar_t__*,int *,int *) ;

bool CheckEraserDiskFreeSpace(ERASER *e)
{
 UINT64 s;

 if (e == ((void*)0))
 {
  return 1;
 }


 if (GetDiskFree(e->DirName, &s, ((void*)0), ((void*)0)) == 0)
 {

  return 1;
 }

 if (e->MinFreeSpace > s)
 {

  return 0;
 }


 return 1;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_3__ {int HamMode; int pData; } ;
typedef TYPE_1__ IO ;


 int OSFileSeek (int ,int ,int) ;

bool FileSeek(IO *o, UINT mode, int offset)
{

 if (o == ((void*)0))
 {
  return 0;
 }

 if (o->HamMode == 0)
 {
  return OSFileSeek(o->pData, mode, offset);
 }
 else
 {
  return 0;
 }
}

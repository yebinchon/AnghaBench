
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FALSE ;
 int TRUE ;

__attribute__((used)) static int CartIsFor5200(int type)
{
 switch (type) {
 case 133:
 case 129:
 case 131:
 case 128:
 case 130:
 case 132:
  return TRUE;
 default:
  break;
 }
 return FALSE;
}

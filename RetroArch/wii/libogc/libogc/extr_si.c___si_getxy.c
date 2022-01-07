
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _xy {int dummy; } ;


 int VIDEO_GetCurrentTvMode () ;




 struct _xy** xy ;

__attribute__((used)) static __inline__ struct _xy* __si_getxy()
{
 switch(VIDEO_GetCurrentTvMode()) {
  case 129:
  case 130:
  case 131:
   return xy[0];
   break;
  case 128:
   return xy[1];
   break;
 }
 return ((void*)0);
}

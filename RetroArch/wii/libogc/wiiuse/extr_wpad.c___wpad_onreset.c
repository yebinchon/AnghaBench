
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ s32 ;


 scalar_t__ FALSE ;
 int WPAD_Shutdown () ;

__attribute__((used)) static s32 __wpad_onreset(s32 final)
{

 if(final==FALSE) {
  WPAD_Shutdown();
 }
 return 1;
}

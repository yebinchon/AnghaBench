
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef enum frontend_architecture { ____Placeholder_frontend_architecture } frontend_architecture ;
struct TYPE_4__ {int member_0; } ;
struct TYPE_5__ {int wProcessorArchitecture; TYPE_1__ member_0; } ;
typedef TYPE_2__ SYSTEM_INFO ;


 int FRONTEND_ARCH_ARM ;
 int FRONTEND_ARCH_NONE ;
 int FRONTEND_ARCH_X86 ;
 int FRONTEND_ARCH_X86_64 ;
 int GetSystemInfo (TYPE_2__*) ;




enum frontend_architecture frontend_win32_get_architecture(void)
{
   return FRONTEND_ARCH_NONE;
}

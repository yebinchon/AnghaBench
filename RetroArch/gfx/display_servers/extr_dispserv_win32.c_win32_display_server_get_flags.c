
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int BIT32_SET (int ,int ) ;
 int DISPSERV_CTX_CRT_SWITCHRES ;

__attribute__((used)) static uint32_t win32_display_server_get_flags(void *data)
{
   uint32_t flags = 0;

   BIT32_SET(flags, DISPSERV_CTX_CRT_SWITCHRES);

   return flags;
}

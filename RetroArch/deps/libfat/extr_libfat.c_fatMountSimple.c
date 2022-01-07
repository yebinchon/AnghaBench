
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DISC_INTERFACE ;


 int DEFAULT_CACHE_PAGES ;
 int DEFAULT_SECTORS_PAGE ;
 int fatMount (char const*,int const*,int ,int ,int ) ;

bool fatMountSimple (const char* name, const DISC_INTERFACE* interface)
{
   return fatMount (name, interface, 0, DEFAULT_CACHE_PAGES, DEFAULT_SECTORS_PAGE);
}

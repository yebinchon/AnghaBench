
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef int libretrodb_t ;


 int * checkdb (int *) ;
 int libretrodb_close (int *) ;

__attribute__((used)) static int db_close(lua_State *L)
{
 libretrodb_t *db = checkdb(L);
 libretrodb_close(db);
 return 0;
}

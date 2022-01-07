
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ebb_connection ;


 int free (int *) ;

__attribute__((used)) static void on_connection_close(ebb_connection* connection)
{
 free(connection);
}

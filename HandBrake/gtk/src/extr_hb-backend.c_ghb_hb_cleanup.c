
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gboolean ;


 int del_tree (char*,int) ;
 int free (char*) ;
 char* hb_get_temporary_directory () ;

void
ghb_hb_cleanup(gboolean partial)
{
    char * dir;

    dir = hb_get_temporary_directory();
    del_tree(dir, !partial);
    free(dir);
}

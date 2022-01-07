
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dirent {char* d_name; } ;
typedef int DIR ;


 int closedir (int *) ;
 int free (char*) ;
 char* hb_get_temporary_directory () ;
 int hb_presets_free () ;
 char* hb_strdup_printf (char*,char*,char*) ;
 int * opendir (char*) ;
 struct dirent* readdir (int *) ;
 int rmdir (char*) ;
 int unlink (char*) ;

void hb_global_close()
{
    char * dirname;
    DIR * dir;
    struct dirent * entry;

    hb_presets_free();


    dirname = hb_get_temporary_directory();

    dir = opendir( dirname );
    if (dir)
    {
        while( ( entry = readdir( dir ) ) )
        {
            char * filename;
            if( entry->d_name[0] == '.' )
            {
                continue;
            }
            filename = hb_strdup_printf("%s/%s", dirname, entry->d_name);
            unlink( filename );
            free(filename);
        }
        closedir( dir );
        rmdir( dirname );
    }
    free(dirname);
}

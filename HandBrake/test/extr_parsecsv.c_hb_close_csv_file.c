
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int fileref; } ;
typedef TYPE_1__ hb_csv_file_t ;


 int fclose (int ) ;
 int free (TYPE_1__*) ;

void hb_close_csv_file( hb_csv_file_t *file )
{
    if( file == ((void*)0) )
    {
        return;
    }

    fclose( file->fileref );
    free( file );
}

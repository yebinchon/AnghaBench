
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hb_csv_cell_t ;


 int free (int *) ;

void hb_dispose_cell( hb_csv_cell_t *cell )
{
    if( cell == ((void*)0) )
    {
        return;
    }

    free( cell );
}

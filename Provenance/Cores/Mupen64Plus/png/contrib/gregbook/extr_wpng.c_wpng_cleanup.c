
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * row_pointers; int * image_data; int * infile; int * outfile; } ;


 int fclose (int *) ;
 int free (int *) ;
 TYPE_1__ wpng_info ;

__attribute__((used)) static void wpng_cleanup(void)
{
    if (wpng_info.outfile) {
        fclose(wpng_info.outfile);
        wpng_info.outfile = ((void*)0);
    }

    if (wpng_info.infile) {
        fclose(wpng_info.infile);
        wpng_info.infile = ((void*)0);
    }

    if (wpng_info.image_data) {
        free(wpng_info.image_data);
        wpng_info.image_data = ((void*)0);
    }

    if (wpng_info.row_pointers) {
        free(wpng_info.row_pointers);
        wpng_info.row_pointers = ((void*)0);
    }
}

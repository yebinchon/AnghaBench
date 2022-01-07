
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
typedef int hb_handle_t ;
struct TYPE_5__ {int max_plane; } ;
struct TYPE_7__ {TYPE_2__* plane; TYPE_1__ f; } ;
typedef TYPE_3__ hb_buffer_t ;
struct TYPE_6__ {int stride; int width; int height; int * data; } ;
typedef int FILE ;


 int errno ;
 int fclose (int *) ;
 scalar_t__ ferror (int *) ;
 int free (char*) ;
 int fwrite (int *,int,int,int *) ;
 int hb_error (char*,...) ;
 int * hb_fopen (char*,char*) ;
 int hb_get_instance_id (int *) ;
 char* hb_get_temporary_filename (char*,int ,int,int) ;
 int strcpy (char*,char*) ;
 scalar_t__ strerror_r (int ,char*,int) ;

int hb_save_preview( hb_handle_t * h, int title, int preview, hb_buffer_t *buf )
{
    FILE * file;
    char * filename;
    char reason[80];

    filename = hb_get_temporary_filename("%d_%d_%d", hb_get_instance_id(h),
                                         title, preview );

    file = hb_fopen(filename, "wb");
    if (file == ((void*)0))
    {
        if (strerror_r(errno, reason, 79) != 0)
            strcpy(reason, "unknown -- strerror_r() failed");

        hb_error("hb_save_preview: Failed to open %s (reason: %s)",
                 filename, reason);
        free(filename);
        return -1;
    }

    int pp, hh;
    for( pp = 0; pp <= buf->f.max_plane; pp++ )
    {
        uint8_t *data = buf->plane[pp].data;
        int stride = buf->plane[pp].stride;
        int w = buf->plane[pp].width;
        int h = buf->plane[pp].height;

        for( hh = 0; hh < h; hh++ )
        {
            if (fwrite( data, w, 1, file ) < w)
            {
                if (ferror(file))
                {
                    if (strerror_r(errno, reason, 79) != 0)
                        strcpy(reason, "unknown -- strerror_r() failed");

                    hb_error( "hb_save_preview: Failed to write line %d to %s "
                              "(reason: %s). Preview will be incomplete.",
                              hh, filename, reason );
                    goto done;
                }
            }
            data += stride;
        }
    }

done:
    free(filename);
    fclose( file );

    return 0;
}

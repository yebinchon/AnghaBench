
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_8__ {int height; int width; } ;
struct TYPE_10__ {TYPE_1__ geometry; int index; } ;
typedef TYPE_3__ hb_title_t ;
typedef int hb_handle_t ;
struct TYPE_11__ {TYPE_2__* plane; } ;
typedef TYPE_4__ hb_buffer_t ;
struct TYPE_9__ {int stride; int width; int height; int * data; } ;
typedef int FILE ;


 int AV_PIX_FMT_YUV420P ;
 int errno ;
 int fclose (int *) ;
 scalar_t__ ferror (int *) ;
 int fread (int *,int,int,int *) ;
 int free (char*) ;
 int hb_error (char*,...) ;
 int * hb_fopen (char*,char*) ;
 TYPE_4__* hb_frame_buffer_init (int ,int ,int ) ;
 int hb_get_instance_id (int *) ;
 char* hb_get_temporary_filename (char*,int ,int ,int) ;
 int strcpy (char*,char*) ;
 scalar_t__ strerror_r (int ,char*,int) ;

hb_buffer_t * hb_read_preview(hb_handle_t * h, hb_title_t *title, int preview)
{
    FILE * file;
    char * filename;
    char reason[80];

    filename = hb_get_temporary_filename("%d_%d_%d", hb_get_instance_id(h),
                                         title->index, preview);

    file = hb_fopen(filename, "rb");
    if (file == ((void*)0))
    {
        if (strerror_r(errno, reason, 79) != 0)
            strcpy(reason, "unknown -- strerror_r() failed");

        hb_error("hb_read_preview: Failed to open %s (reason: %s)",
                 filename, reason);
        free(filename);
        return ((void*)0);
    }

    hb_buffer_t * buf;
    buf = hb_frame_buffer_init(AV_PIX_FMT_YUV420P,
                               title->geometry.width, title->geometry.height);

    if (!buf)
        goto done;

    int pp, hh;
    for (pp = 0; pp < 3; pp++)
    {
        uint8_t *data = buf->plane[pp].data;
        int stride = buf->plane[pp].stride;
        int w = buf->plane[pp].width;
        int h = buf->plane[pp].height;

        for (hh = 0; hh < h; hh++)
        {
            if (fread(data, w, 1, file) < w)
            {
                if (ferror(file))
                {
                    if (strerror_r(errno, reason, 79) != 0)
                        strcpy(reason, "unknown -- strerror_r() failed");

                    hb_error("hb_read_preview: Failed to read line %d from %s "
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
    fclose(file);

    return buf;
}

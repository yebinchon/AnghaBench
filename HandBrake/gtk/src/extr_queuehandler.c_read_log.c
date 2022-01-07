
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* extra_activity_path; int extra_activity_buffer; } ;
typedef TYPE_1__ signal_user_data_t ;
typedef int GtkTextIter ;
typedef int FILE ;


 size_t ACTIVITY_MAX_READ_SZ ;
 int SEEK_END ;
 int SEEK_SET ;
 int fclose (int *) ;
 int feof (int *) ;
 size_t fread (char*,int,size_t,int *) ;
 int fseek (int *,int ,int ) ;
 size_t ftell (int *) ;
 int * g_fopen (char const*,char*) ;
 int g_free (char*) ;
 char* g_malloc (size_t) ;
 char* g_strdup (char const*) ;
 int gtk_text_buffer_get_end_iter (int ,int *) ;
 int gtk_text_buffer_insert (int ,int *,char*,size_t) ;
 int gtk_text_buffer_set_text (int ,char*,int ) ;
 int strcmp (char*,char const*) ;

__attribute__((used)) static void read_log(signal_user_data_t * ud, const char * log_path)
{
    FILE * f;
    size_t size, req_size;
    GtkTextIter iter;
    char * buf;

    if (ud->extra_activity_path != ((void*)0) &&
        !strcmp(ud->extra_activity_path, log_path))
    {
        return;
    }
    g_free(ud->extra_activity_path);
    ud->extra_activity_path = g_strdup(log_path);

    gtk_text_buffer_set_text(ud->extra_activity_buffer, "", 0);

    f = g_fopen(log_path, "r");
    if (f == ((void*)0))
    {
        return;
    }
    fseek(f, 0, SEEK_END);
    req_size = ftell(f);
    fseek(f, 0, SEEK_SET);
    if (req_size > ACTIVITY_MAX_READ_SZ)
    {
        req_size = ACTIVITY_MAX_READ_SZ;
    }
    buf = g_malloc(req_size);
    while (!feof(f))
    {
        size = fread(buf, 1, req_size, f);
        if (size <= 0)
        {
            break;
        }
        gtk_text_buffer_get_end_iter(ud->extra_activity_buffer, &iter);
        gtk_text_buffer_insert(ud->extra_activity_buffer, &iter, buf, size);
    }
    fclose(f);
    g_free(buf);
}

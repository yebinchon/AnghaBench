
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef int ssize_t ;
struct TYPE_5__ {TYPE_1__* subtitle; int file; } ;
typedef TYPE_2__ hb_work_private_t ;
struct TYPE_4__ {int extradata_size; int * extradata; } ;


 int free (char*) ;
 int hb_getline (char**,size_t*,int ) ;
 char* hb_strdup_printf (char*,char*,char*) ;
 char* strdup (char*) ;
 int strlen (char*) ;
 int strncasecmp (char*,char*,int) ;

__attribute__((used)) static int extradataInit( hb_work_private_t * pv )
{
    int events = 0;
    char * events_tag = "[Events]";
    char * format_tag = "Format:";
    int events_len = strlen(events_tag);;
    int format_len = strlen(format_tag);;
    char * header = ((void*)0);

    while (1)
    {
        char * line = ((void*)0);
        ssize_t len;
        size_t size = 0;

        len = hb_getline(&line, &size, pv->file);
        if (len < 0)
        {

            free(header);
            return 1;
        }
        if (len > 0 && line != ((void*)0))
        {
            if (header != ((void*)0))
            {
                char * tmp = header;
                header = hb_strdup_printf("%s%s", header, line);
                free(tmp);
            }
            else
            {
                header = strdup(line);
            }
            if (!events)
            {
                if (len >= events_len &&
                    !strncasecmp(line, events_tag, events_len))
                {
                    events = 1;
                }
            }
            else
            {
                if (len >= format_len &&
                    !strncasecmp(line, format_tag, format_len))
                {
                    free(line);
                    break;
                }

                free(header);
                return 1;
            }
        }
        free(line);
    }
    pv->subtitle->extradata = (uint8_t*)header;
    pv->subtitle->extradata_size = strlen(header) + 1;

    return 0;
}

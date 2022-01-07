
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int graph; int output; } ;
typedef TYPE_1__ hb_filter_private_t ;
struct TYPE_9__ {TYPE_1__* private_data; } ;
typedef TYPE_2__ hb_filter_object_t ;
struct TYPE_10__ {char* human_readable_desc; int output; } ;
typedef TYPE_3__ hb_filter_info_t ;


 TYPE_3__* calloc (int,int) ;
 int free (TYPE_3__*) ;
 int global_verbosity_level ;
 char* hb_avfilter_graph_settings (int ) ;
 int hb_error (char*) ;
 char* malloc (int) ;
 char* strchr (char const*,char) ;

__attribute__((used)) static hb_filter_info_t * avfilter_info(hb_filter_object_t * filter)
{
    hb_filter_private_t * pv = filter->private_data;
    hb_filter_info_t * info;

    if (global_verbosity_level < 2)
    {

        return ((void*)0);
    }
    if (pv == ((void*)0))
    {
        return ((void*)0);
    }

    info = calloc(1, sizeof(hb_filter_info_t));
    if (info == ((void*)0))
    {
        hb_error("avfilter_info: allocation failure");
        return ((void*)0);
    }
    info->output = pv->output;
    info->human_readable_desc = malloc(1024);
    if (info->human_readable_desc == ((void*)0))
    {
        free(info);
        hb_error("avfilter_info: allocation failure");
        return ((void*)0);
    }
    info->human_readable_desc[0] = 0;

    char * dst = info->human_readable_desc;
    const char * start = hb_avfilter_graph_settings(pv->graph);
    while (start != ((void*)0) && *start != 0)
    {

        char * comma = strchr(start, ',');
        char * quote = strchr(start, '\'');
        if (comma != ((void*)0) && quote != ((void*)0) && quote < comma)
        {

            quote = strchr(quote+1, '\'');
            comma = strchr(start, ',');
        }

        int name = 1;
        while (*start != 0 && (comma == ((void*)0) || start < comma))
        {
            switch (*start)
            {
                case '=':
                    if (name)
                    {
                        *dst++ = ':';
                        *dst++ = ' ';
                        name = 0;
                    }
                    else
                    {
                        *dst++ = '=';
                    }
                    break;

                case ':':
                    *dst++ = ',';
                    *dst++ = ' ';
                    break;

                case '\'':
                case ' ':
                    break;

                default:
                    *dst++ = *start;

            }
            start++;
        }
        if (*start != 0)
        {
            *dst++ = '\n';
            start++;
        }
    }
    *dst = 0;
    return info;
}

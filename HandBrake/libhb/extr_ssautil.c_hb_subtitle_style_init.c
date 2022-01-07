
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssa_style_indicies_t ;
typedef int hb_subtitle_style_context_t ;


 scalar_t__ add_style (int *,char**,int *) ;
 int * calloc (int,int) ;
 int fill_field_indicies (char**,int *) ;
 int free (char*) ;
 char** get_fields (char*,int ) ;
 int hb_str_vfree (char**) ;
 char* sgetline (char*) ;
 int ssa_style_reset (int *) ;
 char* strchr (char*,char) ;
 char* strstr (char const*,char*) ;

hb_subtitle_style_context_t * hb_subtitle_style_init(const char * ssa_header)
{
    hb_subtitle_style_context_t * ctx;

    ctx = calloc(1, sizeof(*ctx));
    if (ctx == ((void*)0))
    {
        return ((void*)0);
    }
    if (ssa_header != ((void*)0))
    {

        char * pos = strstr(ssa_header, "[V4");

        if (pos != ((void*)0))
        {
            pos = strstr(pos, "\nFormat:");
            if (pos != ((void*)0))
            {
                char ** fields;
                int next = 7;
                char * line = sgetline(pos + 8);

                fields = get_fields(line, 0);
                free(line);

                if (fields != ((void*)0))
                {
                    ssa_style_indicies_t field_indices;

                    fill_field_indicies(fields, &field_indices);

                    pos = strstr(pos, "\nStyle:");
                    while (pos != ((void*)0))
                    {
                        char ** style;

                        line = sgetline(pos + next);
                        style = get_fields(line, 0);
                        free(line);

                        if (add_style(ctx, style, &field_indices))
                        {
                            hb_str_vfree(style);
                            break;
                        }
                        pos = strchr(pos + next, '\n');
                        next = 1;

                        hb_str_vfree(style);
                    }

                    hb_str_vfree(fields);
                }
            }
        }
    }
    ssa_style_reset(ctx);
    return ctx;
}

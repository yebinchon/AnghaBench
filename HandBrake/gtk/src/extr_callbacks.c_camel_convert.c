
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gint ;
typedef char gchar ;





__attribute__((used)) static void
camel_convert(gchar *str)
{
    gint state = 128;

    if (str == ((void*)0)) return;
    while (*str)
    {
        if (*str == '_') *str = ' ';
        switch (state)
        {
            case 128:
            {
                if (*str >= 'A' && *str <= 'Z')
                    state = 129;
                else
                    state = 128;

            } break;
            case 129:
            {
                if (*str >= 'A' && *str <= 'Z')
                    *str = *str - 'A' + 'a';
                else
                    state = 128;
            } break;
        }
        str++;
    }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int size; char* data; int s; } ;
typedef TYPE_1__ hb_buffer_t ;


 TYPE_1__* hb_buffer_dup (TYPE_1__*) ;
 TYPE_1__* hb_buffer_init (int) ;
 int memcpy (char*,char*,int) ;
 int sprintf (char*,char*,char*,char*) ;
 char* strchr (char*,char) ;
 int strlen (char*) ;

__attribute__((used)) static hb_buffer_t * merge_ssa(hb_buffer_t *a, hb_buffer_t *b)
{
    int len, ii;
    char *text;
    hb_buffer_t *buf;

    if (a == ((void*)0) && b == ((void*)0))
    {
        return ((void*)0);
    }
    if (a == ((void*)0))
    {
        return hb_buffer_dup(b);
    }
    if (b == ((void*)0))
    {
        return hb_buffer_dup(a);
    }

    buf = hb_buffer_init(a->size + b->size);
    buf->s = a->s;


    text = (char*)b->data;
    for (ii = 0; ii < 8; ii++)
    {
        text = strchr(text, ',');
        if (text == ((void*)0))
            break;
        text++;
    }
    if (text != ((void*)0))
    {

        len = strlen((char*)a->data);
        if (len > 0 && a->data[len - 1] == '\n')
        {
            a->data[len - 1] = 0;
            len--;
            if (len > 0 && a->data[len - 1] == '\r')
            {
                a->data[len - 1] = 0;
            }
        }


        len = sprintf((char*)buf->data, "%s\\N{\\r}%s", a->data, text);
        if (len >= 0)
            buf->size = len + 1;
    }
    else
    {
        memcpy(buf->data, a->data, a->size);
        buf->size = a->size;
    }

    return buf;
}

#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int size; char* data; int /*<<< orphan*/  s; } ;
typedef  TYPE_1__ hb_buffer_t ;

/* Variables and functions */
 TYPE_1__* FUNC0 (TYPE_1__*) ; 
 TYPE_1__* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 
 int FUNC3 (char*,char*,char*,char*) ; 
 char* FUNC4 (char*,char) ; 
 int FUNC5 (char*) ; 

__attribute__((used)) static hb_buffer_t * FUNC6(hb_buffer_t *a, hb_buffer_t *b)
{
    int len, ii;
    char *text;
    hb_buffer_t *buf;

    if (a == NULL && b == NULL)
    {
        return NULL;
    }
    if (a == NULL)
    {
        return FUNC0(b);
    }
    if (b == NULL)
    {
        return FUNC0(a);
    }

    buf = FUNC1(a->size + b->size);
    buf->s = a->s;

    // Find the text in the second SSA sub
    text = (char*)b->data;
    for (ii = 0; ii < 8; ii++)
    {
        text = FUNC4(text, ',');
        if (text == NULL)
            break;
        text++;
    }
    if (text != NULL)
    {
        // Strip trailing CR and/or LF
        len = FUNC5((char*)a->data);
        if (len > 0 && a->data[len - 1] == '\n')
        {
            a->data[len - 1] = 0;
            len--;
            if (len > 0 && a->data[len - 1] == '\r')
            {
                a->data[len - 1] = 0;
            }
        }
        // Text subtitles are SSA internally.  Use SSA newline code
        // and force style reset at beginning of new line.
        len = FUNC3((char*)buf->data, "%s\\N{\\r}%s", a->data, text);
        if (len >= 0)
            buf->size = len + 1;
    }
    else
    {
        FUNC2(buf->data, a->data, a->size);
        buf->size = a->size;
    }

    return buf;
}

typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int va_list ;
typedef int scratch ;
struct TYPE_4__ {char* data; struct TYPE_4__* prev; struct TYPE_4__* next; } ;
typedef TYPE_1__ STRING_T ;


 TYPE_1__* allocated_strings ;
 int fatal_error (char*) ;
 TYPE_1__* malloc (int) ;
 int memcpy (char*,char*,int) ;
 int vsnprintf (char*,int,char const*,int ) ;

char *vsprintf_dup(const char *fmt, va_list ap)
{
    char scratch[512];
    int len;
    STRING_T *str;
    len = vsnprintf(scratch, sizeof(scratch), fmt, ap) + 1;

    if (len > sizeof(scratch))
 fatal_error("Maximum string length exceeded");

    str = malloc(sizeof(STRING_T) + len);
    if (!str)
 fatal_error("Out of memory");

    memcpy(str->data, scratch, len);
    if (allocated_strings)
    {
 str->next = allocated_strings;
 str->prev = allocated_strings->prev;
 str->next->prev = str;
 str->prev->next = str;
    }
    else
    {
 str->next = str;
 str->prev = str;
 allocated_strings = str;
    }

    return str->data;
}

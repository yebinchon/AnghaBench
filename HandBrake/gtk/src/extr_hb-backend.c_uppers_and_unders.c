
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char gchar ;
typedef int gboolean ;


 int FALSE ;
 int TRUE ;
 char* g_strchomp (int ) ;
 int g_strchug (char*) ;

__attribute__((used)) static gboolean
uppers_and_unders(gchar *str)
{
    if (str == ((void*)0)) return FALSE;
    str = g_strchomp(g_strchug(str));
    while (*str)
    {
        if (*str == ' ')
        {
            return FALSE;
        }
        if (*str >= 'a' && *str <= 'z')
        {
            return FALSE;
        }
        str++;
    }
    return TRUE;
}

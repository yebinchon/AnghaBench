
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t gint ;
typedef char gchar ;
typedef int GtkEntry ;


 int GTK_EDITABLE (int *) ;
 char const G_DIR_SEPARATOR ;
 char* ghb_editable_get_text (int *) ;
 int gtk_editable_select_region (int ,size_t,size_t) ;
 size_t strlen (char const*) ;

__attribute__((used)) static void
destination_select_title(GtkEntry *entry)
{
    const gchar *dest;
    gint start, end;

    dest = ghb_editable_get_text(entry);
    for (end = strlen(dest)-1; end > 0; end--)
    {
        if (dest[end] == '.')
        {
            break;
        }
    }
    for (start = end; start >= 0; start--)
    {
        if (dest[start] == G_DIR_SEPARATOR)
        {
            start++;
            break;
        }
    }
    if (start < 0) start = 0;
    if (start < end)
    {
        gtk_editable_select_region(GTK_EDITABLE(entry), start, end);
    }
}

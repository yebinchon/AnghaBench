
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gint ;
typedef int GtkEntry ;


 int gtk_entry_set_width_chars (int *,int ) ;

__attribute__((used)) static inline void ghb_entry_set_width_chars(GtkEntry * entry, gint n_chars)
{
    gtk_entry_set_width_chars(entry, n_chars);
}

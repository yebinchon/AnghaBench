
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int YuiFileEntry ;


 int GTK_CONTAINER (int *) ;
 int gtk_container_set_border_width (int ,int) ;

__attribute__((used)) static void yui_file_entry_init (YuiFileEntry * yfe) {
        gtk_container_set_border_width(GTK_CONTAINER(yfe), 10);
}

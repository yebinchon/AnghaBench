
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int path; } ;
typedef TYPE_1__ transport_ws_t ;
typedef int esp_transport_handle_t ;


 TYPE_1__* esp_transport_get_context_data (int ) ;
 int realloc (int ,scalar_t__) ;
 int strcpy (int ,char const*) ;
 scalar_t__ strlen (char const*) ;

void esp_transport_ws_set_path(esp_transport_handle_t t, const char *path)
{
    transport_ws_t *ws = esp_transport_get_context_data(t);
    ws->path = realloc(ws->path, strlen(path) + 1);
    strcpy(ws->path, path);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int esp_err_t ;
struct TYPE_11__ {int func; scalar_t__ argtable; int hint; int help; int * command; } ;
typedef TYPE_1__ esp_console_cmd_t ;
struct TYPE_12__ {char* hint; int func; scalar_t__ argtable; int help; int * command; } ;
typedef TYPE_2__ cmd_item_t ;
typedef int FILE ;


 int ESP_ERR_INVALID_ARG ;
 int ESP_ERR_NO_MEM ;
 int ESP_OK ;
 TYPE_2__* SLIST_FIRST (int *) ;
 int SLIST_INSERT_AFTER (TYPE_2__*,TYPE_2__*,int ) ;
 int SLIST_INSERT_HEAD (int *,TYPE_2__*,int ) ;
 TYPE_2__* SLIST_NEXT (TYPE_2__*,int ) ;
 int arg_print_syntax (int *,scalar_t__,int *) ;
 int asprintf (char**,char*,int ) ;
 scalar_t__ calloc (int,int) ;
 int fclose (int *) ;
 int free (TYPE_2__*) ;
 int next ;
 int * open_memstream (char**,size_t*) ;
 int s_cmd_list ;
 int * strchr (int *,char) ;

esp_err_t esp_console_cmd_register(const esp_console_cmd_t *cmd)
{
    cmd_item_t *item = (cmd_item_t *) calloc(1, sizeof(*item));
    if (item == ((void*)0)) {
        return ESP_ERR_NO_MEM;
    }
    if (cmd->command == ((void*)0)) {
        free(item);
        return ESP_ERR_INVALID_ARG;
    }
    if (strchr(cmd->command, ' ') != ((void*)0)) {
        free(item);
        return ESP_ERR_INVALID_ARG;
    }
    item->command = cmd->command;
    item->help = cmd->help;
    if (cmd->hint) {



        int unused __attribute__((unused));
        unused = asprintf(&item->hint, " %s", cmd->hint);
    } else if (cmd->argtable) {

        char *buf = ((void*)0);
        size_t buf_size = 0;
        FILE *f = open_memstream(&buf, &buf_size);
        if (f != ((void*)0)) {
            arg_print_syntax(f, cmd->argtable, ((void*)0));
            fclose(f);
        }
        item->hint = buf;
    }
    item->argtable = cmd->argtable;
    item->func = cmd->func;
    cmd_item_t *last = SLIST_FIRST(&s_cmd_list);
    if (last == ((void*)0)) {
        SLIST_INSERT_HEAD(&s_cmd_list, item, next);
    } else {
        cmd_item_t *it;
        while ((it = SLIST_NEXT(last, next)) != ((void*)0)) {
            last = it;
        }
        SLIST_INSERT_AFTER(last, item, next);
    }
    return ESP_OK;
}

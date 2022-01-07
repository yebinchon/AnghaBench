
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int classes; int names; int member_0; } ;
typedef TYPE_1__ metadata ;
typedef int list ;


 int fprintf (int ,char*) ;
 int free_list (int *) ;
 int get_labels (char*) ;
 int option_find_int (int *,char*,int) ;
 char* option_find_str (int *,char*,int ) ;
 int * read_data_cfg (char*) ;
 int stderr ;

metadata get_metadata(char *file)
{
    metadata m = {0};
    list *options = read_data_cfg(file);

    char *name_list = option_find_str(options, "names", 0);
    if(!name_list) name_list = option_find_str(options, "labels", 0);
    if(!name_list) {
        fprintf(stderr, "No names or labels found\n");
    } else {
        m.names = get_labels(name_list);
    }
    m.classes = option_find_int(options, "classes", 2);
    free_list(options);
    return m;
}

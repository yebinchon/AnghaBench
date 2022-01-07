
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* sourceLoc; } ;
struct TYPE_4__ {char* file; int line; } ;
typedef TYPE_2__ Node ;


 int emit (char*,...) ;
 char* format (char*,long,int ) ;
 char* last_loc ;
 scalar_t__ map_get (int ,char*) ;
 int map_len (int ) ;
 int map_put (int ,char*,void*) ;
 int maybe_print_source_line (char*,int ) ;
 int quote_cstring (char*) ;
 int source_files ;
 scalar_t__ strcmp (char*,char*) ;

__attribute__((used)) static void maybe_print_source_loc(Node *node) {
    if (!node->sourceLoc)
        return;
    char *file = node->sourceLoc->file;
    long fileno = (long)map_get(source_files, file);
    if (!fileno) {
        fileno = map_len(source_files) + 1;
        map_put(source_files, file, (void *)fileno);
        emit(".file %ld \"%s\"", fileno, quote_cstring(file));
    }
    char *loc = format(".loc %ld %d 0", fileno, node->sourceLoc->line);
    if (strcmp(loc, last_loc)) {
        emit("%s", loc);
        maybe_print_source_line(file, node->sourceLoc->line);
    }
    last_loc = loc;
}

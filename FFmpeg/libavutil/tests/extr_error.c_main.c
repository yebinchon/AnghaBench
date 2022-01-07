
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct error_entry {int num; char* tag; } ;


 int FF_ARRAY_ELEMS (struct error_entry*) ;
 char* av_err2str (int) ;
 struct error_entry* error_entries ;
 int printf (char*,int,char*,...) ;

int main(void)
{
    int i;

    for (i = 0; i < FF_ARRAY_ELEMS(error_entries); i++) {
        const struct error_entry *entry = &error_entries[i];
        printf("%d: %s [%s]\n", entry->num, av_err2str(entry->num), entry->tag);
    }

    for (i = 0; i < 256; i++) {
        printf("%d: %s\n", -i, av_err2str(-i));
    }

    return 0;
}

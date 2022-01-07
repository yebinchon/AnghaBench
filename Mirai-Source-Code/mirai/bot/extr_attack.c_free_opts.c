
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct attack_option {struct attack_option* val; } ;


 int free (struct attack_option*) ;

__attribute__((used)) static void free_opts(struct attack_option *opts, int len)
{
    int i;

    if (opts == ((void*)0))
        return;

    for (i = 0; i < len; i++)
    {
        if (opts[i].val != ((void*)0))
            free(opts[i].val);
    }
    free(opts);
}

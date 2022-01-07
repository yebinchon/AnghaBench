
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ mtd_ext_size; scalar_t__ key_present; } ;
typedef TYPE_1__ DBEContext ;


 int skip_input (TYPE_1__*,scalar_t__) ;

__attribute__((used)) static int parse_metadata_ext(DBEContext *s)
{
    if (s->mtd_ext_size)
        return skip_input(s, s->key_present + s->mtd_ext_size + 1);
    return 0;
}

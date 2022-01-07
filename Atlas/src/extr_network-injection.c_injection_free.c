
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ query; } ;
typedef TYPE_1__ injection ;


 int TRUE ;
 int g_free (TYPE_1__*) ;
 int g_string_free (scalar_t__,int ) ;

void injection_free(injection *i) {
 if (!i) return;

 if (i->query) g_string_free(i->query, TRUE);

 g_free(i);
}

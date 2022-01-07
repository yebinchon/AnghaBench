
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GString ;


 int TRUE ;
 int g_string_free (int *,int ) ;

void *string_free(GString *s) {
 g_string_free(s, TRUE);
}

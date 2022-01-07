
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gpointer ;


 int TRUE ;
 int g_string_free (int ,int ) ;

__attribute__((used)) static void g_string_free_true(gpointer data) {
 g_string_free(data, TRUE);
}

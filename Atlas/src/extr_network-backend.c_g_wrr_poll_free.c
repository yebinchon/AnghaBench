
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int g_wrr_poll ;


 int g_free (int *) ;

void g_wrr_poll_free(g_wrr_poll *global_wrr) {
    g_free(global_wrr);
}

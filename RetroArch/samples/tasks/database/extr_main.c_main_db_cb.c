
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fprintf (int ,char*,char const*) ;
 int loop_active ;
 int stderr ;

__attribute__((used)) static void main_db_cb(void *task_data, void *user_data, const char *err)
{
   fprintf(stderr, "DB CB: %s\n", err);
   loop_active = 0;
}

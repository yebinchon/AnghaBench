
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Exception {int msg; int obj; } ;


 int $ (int ,int ) ;
 int EXIT_FAILURE ;
 int Exception_Backtrace () ;
 int File ;
 int exit (int ) ;
 int print_to (int ,int ,char*,...) ;
 int stderr ;

__attribute__((used)) static void Exception_Error(struct Exception* e) {

  print_to($(File, stderr), 0, "\n");
  print_to($(File, stderr), 0, "!!\t\n");
  print_to($(File, stderr), 0, "!!\tUncaught %$\n", e->obj);
  print_to($(File, stderr), 0, "!!\t\n");
  print_to($(File, stderr), 0, "!!\t\t %s\n", e->msg);
  print_to($(File, stderr), 0, "!!\t\n");

  Exception_Backtrace();

  exit(EXIT_FAILURE);

}

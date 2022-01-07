
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int T_EXPECT_EQ_INT (int,int,char*) ;
 int T_QUIET ;
 int close (int) ;
 int read (int,int*,int) ;

__attribute__((used)) static void do_child(int *pipefd){
 int exit = 0;

 close(pipefd[1]);
 read(pipefd[0], &exit, sizeof(int));
 T_QUIET; T_EXPECT_EQ_INT(exit, 1, "exit");
 close(pipefd[0]);
}

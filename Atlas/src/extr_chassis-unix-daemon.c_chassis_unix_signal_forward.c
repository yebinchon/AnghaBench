
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SIG_IGN ;
 int g_assert_not_reached () ;
 int kill (int ,int) ;
 int signal (int,int ) ;

__attribute__((used)) static void chassis_unix_signal_forward(int sig) {



 signal(sig, SIG_IGN);

 kill(0, sig);

}

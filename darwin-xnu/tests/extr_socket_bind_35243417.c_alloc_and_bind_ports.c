
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ in_port_t ;


 int T_ASSERT_TRUE (int,char*,int,int) ;
 int T_QUIET ;
 int T_WITH_ERRNO ;
 int close (int) ;
 int sockv6_bind (int,scalar_t__) ;
 int sockv6_open () ;
 int sockv6_set_v6only (int) ;

__attribute__((used)) static bool
alloc_and_bind_ports(in_port_t port_start, in_port_t port_end,
       int bind_attempts)
{
 int bound_count = 0;
 bool success = 1;

 for (in_port_t i = port_start; success && i <= port_end; i++) {
  int s6 = -1;
  int s6_other = -1;
  int ret;

  s6 = sockv6_open();
  sockv6_set_v6only(s6);
  if (sockv6_bind(s6, i) != 0) {

   goto loop_done;
  }
  s6_other = sockv6_open();
  ret = sockv6_bind(s6_other, i);
  T_WITH_ERRNO;
  T_QUIET;
  T_ASSERT_TRUE(ret != 0, "socket %d bind %d", s6_other, i);





  if (sockv6_bind(s6_other, i + 1) == 0) {
   bound_count++;
   if (bound_count >= bind_attempts) {
    break;
   }
  }
 loop_done:
  if (s6 >= 0) {
   close(s6);
  }
  if (s6_other >= 0) {
   close(s6_other);
  }
 }
 T_ASSERT_TRUE(bound_count == bind_attempts,
        "number of successful binds %d (out of %d)",
        bound_count, bind_attempts);
 return (success);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int T_ASSERT_POSIX_SUCCESS (int,char*,int,int) ;
 int T_QUIET ;
 int socket (int,int,int ) ;

__attribute__((used)) static int
sock_open_common(int pf, int type)
{
 int s;

 s = socket(pf, type, 0);
 T_QUIET;
 T_ASSERT_POSIX_SUCCESS(s, "socket(%d, %d, 0)", pf, type);
 return (s);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int F_GETFL ;
 int F_SETFL ;
 int O_NONBLOCK ;
 int fcntl (scalar_t__,int ,...) ;
 scalar_t__ wjobfd ;
 int write (scalar_t__,char*,int) ;

__attribute__((used)) static void
writetokens(int n)
{
    char c = '+';
    if (wjobfd >= 0) {
        fcntl(wjobfd, F_SETFL, fcntl(wjobfd, F_GETFL)|O_NONBLOCK);
        for (; n>1; n--) {
            if (write(wjobfd, &c, 1) != 1) {

            }
        }
    }
}

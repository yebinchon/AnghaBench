
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; } ;


 scalar_t__ ENOENT ;
 int S_ISFIFO (int ) ;
 int T_ASSERT_FAIL (char*,char const*) ;
 int T_ASSERT_POSIX_ZERO (int,char*,char const*) ;
 int T_ASSERT_TRUE (int ,char*,char const*) ;
 scalar_t__ errno ;
 int mkfifo (char const*,int) ;
 int stat (char const*,struct stat*) ;

void
create_fifo(const char * filepath)
{
 struct stat f_stat;
 int ret = 0;
 errno = 0;
 ret = stat(filepath, &f_stat);
 if (ret == 0) {

  T_ASSERT_TRUE(S_ISFIFO(f_stat.st_mode), "ensure %s is a fifo", filepath);
 } else if (errno == ENOENT) {
  ret = mkfifo(filepath, 0777);
  T_ASSERT_POSIX_ZERO(ret, "creating a fifo at path %s", filepath);
 } else {
  T_ASSERT_FAIL("stat operation on %s", filepath);
 }
}

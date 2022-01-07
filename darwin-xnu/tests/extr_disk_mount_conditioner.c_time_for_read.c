
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
typedef int ssize_t ;
typedef int buf ;


 int READSIZE ;
 int SEEK_SET ;
 int T_ASSERT_EQ_INT (int ,int,char*) ;
 int T_ASSERT_EQ_LONG (int ,int,char*,int) ;
 int T_ASSERT_GE_LONG (int ,long,char*) ;
 int bzero (char*,int) ;
 scalar_t__ dt_nanoseconds () ;
 int lseek (int,int ,int ) ;
 int memcmp (char*,char const*,int) ;
 int read (int,char*,int) ;

__attribute__((used)) static uint64_t time_for_read(int fd, const char *expected) {
 int err;
 ssize_t ret;
 char buf[READSIZE];
 uint64_t start, stop;

 bzero(buf, sizeof(buf));
 lseek(fd, 0, SEEK_SET);

 start = dt_nanoseconds();
 ret = read(fd, buf, READSIZE);
 stop = dt_nanoseconds();

 T_ASSERT_GE_LONG(ret, 0L, "read from temporary file");
 T_ASSERT_EQ_LONG(ret, READSIZE, "read %ld bytes from temporary file", READSIZE);
 err = memcmp(buf, expected, sizeof(buf));
 T_ASSERT_EQ_INT(0, err, "read expected contents from temporary file");

 return (stop - start);
}

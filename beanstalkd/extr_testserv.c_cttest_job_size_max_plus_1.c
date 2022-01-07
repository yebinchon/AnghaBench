
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int JOB_DATA_SIZE_LIMIT_MAX ;
 int SERVER () ;
 int ckresp (int,char*) ;
 int job_data_size_limit ;
 int memset (char*,char,int const) ;
 int mustdiallocal (int) ;
 int mustsend (int,char*) ;

void
cttest_job_size_max_plus_1()
{

    job_data_size_limit = JOB_DATA_SIZE_LIMIT_MAX;
    int port = SERVER();
    int fd = mustdiallocal(port);
    mustsend(fd, "put 0 0 0 1073741825\r\n");

    const int len = 1024*1024;
    char body[len+1];
    memset(body, 'a', len);
    body[len] = 0;

    int i;
    for (i=0; i<JOB_DATA_SIZE_LIMIT_MAX; i+=len) {
        mustsend(fd, body);
    }
    mustsend(fd, "x");
    mustsend(fd, "\r\n");
    ckresp(fd, "JOB_TOO_BIG\r\n");
}

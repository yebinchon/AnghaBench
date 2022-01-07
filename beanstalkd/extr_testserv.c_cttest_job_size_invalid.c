
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int JOB_DATA_SIZE_LIMIT_MAX ;
 int SERVER () ;
 int ckresp (int,char*) ;
 int job_data_size_limit ;
 int mustdiallocal (int) ;
 int mustsend (int,char*) ;

void
cttest_job_size_invalid()
{
    job_data_size_limit = JOB_DATA_SIZE_LIMIT_MAX;
    int port = SERVER();
    int fd = mustdiallocal(port);
    mustsend(fd, "put 0 0 0 4294967296\r\n");
    mustsend(fd, "put 0 0 0 10b\r\n");
    mustsend(fd, "put 0 0 0 --!@#$%^&&**()0b\r\n");
    mustsend(fd, "put 0 0 0 1\r\n");
    mustsend(fd, "x\r\n");
    ckresp(fd, "BAD_FORMAT\r\n");
    ckresp(fd, "BAD_FORMAT\r\n");
    ckresp(fd, "BAD_FORMAT\r\n");
    ckresp(fd, "INSERTED 1\r\n");
}

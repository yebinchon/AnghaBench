
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int64_t ;
typedef int RFILE ;


 int filestream_flush (int *) ;

int64_t rfflush(RFILE * stream)
{
    return filestream_flush(stream);
}

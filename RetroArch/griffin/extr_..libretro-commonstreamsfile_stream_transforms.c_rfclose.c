
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RFILE ;


 int filestream_close (int *) ;

int rfclose(RFILE* stream)
{
   return filestream_close(stream);
}

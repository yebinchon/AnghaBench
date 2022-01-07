
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int64_t ;
typedef int RFILE ;


 int filestream_tell (int *) ;

int64_t rftell(RFILE* stream)
{
   return filestream_tell(stream);
}

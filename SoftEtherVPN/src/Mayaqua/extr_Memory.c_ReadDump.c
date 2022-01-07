
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BUF ;


 int * ReadDumpWithMaxSize (char*,int ) ;

BUF *ReadDump(char *filename)
{
 return ReadDumpWithMaxSize(filename, 0);
}

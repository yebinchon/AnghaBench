
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RFILE ;


 int filestream_putc (int *,int) ;

int rfputc(int character, RFILE * stream)
{
    return filestream_putc(stream, character);
}

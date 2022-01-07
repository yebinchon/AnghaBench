
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (int ) ;
 int exit (int) ;
 int perror (char const*) ;

void error(const char *s)
{
    perror(s);
    assert(0);
    exit(-1);
}

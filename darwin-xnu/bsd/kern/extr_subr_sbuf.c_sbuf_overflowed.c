
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sbuf {int dummy; } ;


 int SBUF_HASOVERFLOWED (struct sbuf*) ;

int
sbuf_overflowed(struct sbuf *s)
{
    return SBUF_HASOVERFLOWED(s);
}

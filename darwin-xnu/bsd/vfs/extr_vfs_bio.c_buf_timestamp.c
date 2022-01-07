
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int tv_sec; } ;


 int microuptime (struct timeval*) ;

__attribute__((used)) static __inline__ int
buf_timestamp(void)
{
 struct timeval t;
 microuptime(&t);
 return (t.tv_sec);
}

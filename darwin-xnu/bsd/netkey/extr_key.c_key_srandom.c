
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int tv_usec; } ;


 int microtime (struct timeval*) ;
 int random () ;
 int srandom (int ) ;

__attribute__((used)) static void
key_srandom(void)
{




 struct timeval tv;

 microtime(&tv);

 srandom(tv.tv_usec);


 return;
}

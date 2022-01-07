
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int backslash (char) ;
 int big (int) ;
 int f () ;
 int g () ;
 int h () ;
 int limit () ;
 int printf (char*,char,int) ;

main()
{
 int i; char *s;

 for (s = "bfnrtvx"; *s; s++)
  printf("%c = 0x%x\n", *s, backslash(*s));
 f();
 g();
 h();
 for (i = 0x1000000; i&0x7000000; i += 0x1000000)
  big(i);
 limit();
 return 0;
}

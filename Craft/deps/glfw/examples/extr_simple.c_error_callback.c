
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fputs (char const*,int ) ;
 int stderr ;

__attribute__((used)) static void error_callback(int error, const char* description)
{
    fputs(description, stderr);
}

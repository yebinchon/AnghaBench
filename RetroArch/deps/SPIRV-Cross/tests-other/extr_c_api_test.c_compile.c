
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int spvc_compiler ;


 int SPVC_CHECKED_CALL (int ) ;
 int printf (char*,char const*) ;
 int spvc_compiler_compile (int ,char const**) ;

__attribute__((used)) static void compile(spvc_compiler compiler, const char *tag)
{
 const char *result = ((void*)0);
 SPVC_CHECKED_CALL(spvc_compiler_compile(compiler, &result));
 printf("\n%s\n=======\n", tag);
 printf("%s\n=======\n", result);
}

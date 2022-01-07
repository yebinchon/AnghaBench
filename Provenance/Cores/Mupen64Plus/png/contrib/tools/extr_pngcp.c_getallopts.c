
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct display {int dummy; } ;


 int getallopts_ (struct display*,int ,int*,int ) ;
 int option_index (struct display*,char const*,int ) ;
 int strlen (char const*) ;

__attribute__((used)) static int
getallopts(struct display *dp, const char *opt_str, int *value)
{
   return getallopts_(dp, option_index(dp, opt_str, strlen(opt_str)), value, 0);
}

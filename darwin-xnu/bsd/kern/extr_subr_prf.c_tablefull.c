
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LOG_ERR ;
 int log (int ,char*,char const*) ;

void tablefull(const char *tab)
{
 log(LOG_ERR, "%s: table is full\n", tab);
}

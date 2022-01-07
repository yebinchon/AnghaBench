
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dohentry {int ttl; } ;


 int INT_MAX ;
 int memset (struct dohentry*,int ,int) ;

__attribute__((used)) static void init_dohentry(struct dohentry *de)
{
  memset(de, 0, sizeof(*de));
  de->ttl = INT_MAX;
}

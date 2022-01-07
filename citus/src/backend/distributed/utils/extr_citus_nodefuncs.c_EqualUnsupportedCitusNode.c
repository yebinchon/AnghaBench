
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ExtensibleNode {int dummy; } ;


 int ERROR ;
 int ereport (int ,int ) ;
 int errmsg (char*) ;

__attribute__((used)) static bool
EqualUnsupportedCitusNode(const struct ExtensibleNode *a,
        const struct ExtensibleNode *b)
{
 ereport(ERROR, (errmsg("not implemented")));
}

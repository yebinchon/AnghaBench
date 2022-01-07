
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct connectdata {int data; } ;
struct SASL {size_t state; } ;
typedef size_t saslstate ;


 int infof (int ,char*,void*,char const* const,char const* const) ;

__attribute__((used)) static void state(struct SASL *sasl, struct connectdata *conn,
                  saslstate newstate)
{
  (void) conn;


  sasl->state = newstate;
}

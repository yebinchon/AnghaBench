
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tlsv1_client {scalar_t__ state; } ;


 scalar_t__ ESTABLISHED ;

int tlsv1_client_established(struct tlsv1_client *conn)
{
 return conn->state == ESTABLISHED;
}

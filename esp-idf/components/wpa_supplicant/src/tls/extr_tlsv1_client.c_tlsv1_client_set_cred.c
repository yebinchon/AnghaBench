
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tlsv1_credentials {int dummy; } ;
struct tlsv1_client {struct tlsv1_credentials* cred; } ;


 int tlsv1_cred_free (struct tlsv1_credentials*) ;

int tlsv1_client_set_cred(struct tlsv1_client *conn,
     struct tlsv1_credentials *cred)
{
 tlsv1_cred_free(conn->cred);
 conn->cred = cred;
 return 0;
}

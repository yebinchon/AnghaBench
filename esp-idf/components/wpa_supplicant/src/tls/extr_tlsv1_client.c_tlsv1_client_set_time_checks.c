
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tlsv1_client {int disable_time_checks; } ;



void tlsv1_client_set_time_checks(struct tlsv1_client *conn, int enabled)
{
 conn->disable_time_checks = !enabled;
}

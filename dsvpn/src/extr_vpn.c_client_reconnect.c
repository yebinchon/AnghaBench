
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ is_server; } ;
typedef TYPE_1__ Context ;


 unsigned int RECONNECT_ATTEMPTS ;
 scalar_t__ client_connect (TYPE_1__*) ;
 int client_disconnect (TYPE_1__*) ;
 scalar_t__ exit_signal_received ;
 int puts (char*) ;
 int sleep (int) ;

__attribute__((used)) static int client_reconnect(Context *context)
{
    unsigned int i;

    client_disconnect(context);
    if (context->is_server) {
        return 0;
    }
    for (i = 0; exit_signal_received == 0 && i < RECONNECT_ATTEMPTS; i++) {
        puts("Trying to reconnect");
        sleep(i > 3 ? 3 : i);
        if (client_connect(context) == 0) {
            return 0;
        }
    }
    return -1;
}

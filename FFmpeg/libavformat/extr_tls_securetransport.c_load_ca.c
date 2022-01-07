
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_3__* priv_data; } ;
typedef TYPE_2__ URLContext ;
struct TYPE_6__ {int ca_file; } ;
struct TYPE_8__ {int ca_array; TYPE_1__ tls_shared; } ;
typedef TYPE_3__ TLSContext ;
typedef int * CFArrayRef ;


 int AVERROR (int ) ;
 int CFRelease (int *) ;
 int CFRetain (int *) ;
 int ENOMEM ;
 int import_pem (TYPE_2__*,int ,int **) ;

__attribute__((used)) static int load_ca(URLContext *h)
{
    TLSContext *c = h->priv_data;
    int ret = 0;
    CFArrayRef array = ((void*)0);

    if ((ret = import_pem(h, c->tls_shared.ca_file, &array)) < 0)
        goto end;

    if (!(c->ca_array = CFRetain(array))) {
        ret = AVERROR(ENOMEM);
        goto end;
    }

end:
    if (array)
        CFRelease(array);
    return ret;
}

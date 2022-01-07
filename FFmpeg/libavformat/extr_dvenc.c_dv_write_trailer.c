
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct AVFormatContext {int priv_data; } ;


 int dv_delete_mux (int ) ;

__attribute__((used)) static int dv_write_trailer(struct AVFormatContext *s)
{
    dv_delete_mux(s->priv_data);
    return 0;
}

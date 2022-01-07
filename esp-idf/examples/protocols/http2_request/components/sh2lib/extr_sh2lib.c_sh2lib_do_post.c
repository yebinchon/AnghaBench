
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sh2lib_handle {char const* hostname; } ;
typedef int sh2lib_putpost_data_cb_t ;
typedef int sh2lib_frame_data_recv_cb_t ;
typedef int nva ;
typedef int nghttp2_nv ;


 int const SH2LIB_MAKE_NV (char*,char const*) ;
 int sh2lib_do_putpost_with_nv (struct sh2lib_handle*,int const*,int,int ,int ) ;

int sh2lib_do_post(struct sh2lib_handle *hd, const char *path,
                   sh2lib_putpost_data_cb_t send_cb,
                   sh2lib_frame_data_recv_cb_t recv_cb)
{
    const nghttp2_nv nva[] = { SH2LIB_MAKE_NV(":method", "POST"),
                               SH2LIB_MAKE_NV(":scheme", "https"),
                               SH2LIB_MAKE_NV(":authority", hd->hostname),
                               SH2LIB_MAKE_NV(":path", path),
                             };
    return sh2lib_do_putpost_with_nv(hd, nva, sizeof(nva) / sizeof(nva[0]), send_cb, recv_cb);
}

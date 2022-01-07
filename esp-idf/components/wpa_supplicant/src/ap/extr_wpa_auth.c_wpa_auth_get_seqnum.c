
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpa_authenticator {int dummy; } ;



__attribute__((used)) static inline int wpa_auth_get_seqnum(struct wpa_authenticator *wpa_auth,
                      const u8 *addr, int idx, u8 *seq)
{
    return -1;
}

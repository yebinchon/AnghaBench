
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;
typedef int u_int32_t ;
struct sockaddr_in6 {int sin6_port; } ;
struct sockaddr_in {int sin_port; } ;
struct sockaddr {int sa_family; int sa_len; } ;
struct secasindex {int dst; int src; } ;
struct sadb_spirange {int dummy; } ;




 int KEY_SETSECASIDX (int ,int ,int ,struct sockaddr*,struct sockaddr*,int ,struct secasindex*) ;
 int LCK_MTX_ASSERT (int ,int ) ;
 int LCK_MTX_ASSERT_NOTOWNED ;
 int key_do_getnewspi (struct sadb_spirange*,struct secasindex*) ;
 int lck_mtx_lock (int ) ;
 int lck_mtx_unlock (int ) ;
 int sadb_mutex ;

u_int32_t
key_getspi2(struct sockaddr *src,
   struct sockaddr *dst,
   u_int8_t proto,
   u_int8_t mode,
   u_int32_t reqid,
   struct sadb_spirange *spirange)
{
 u_int32_t spi;
 struct secasindex saidx;

 LCK_MTX_ASSERT(sadb_mutex, LCK_MTX_ASSERT_NOTOWNED);


 KEY_SETSECASIDX(proto, mode, reqid, src, dst, 0, &saidx);


 switch (((struct sockaddr *)&saidx.src)->sa_family) {
  case 129:
   if (((struct sockaddr *)&saidx.src)->sa_len != sizeof(struct sockaddr_in))
    return 0;
   ((struct sockaddr_in *)&saidx.src)->sin_port = 0;
   break;
  case 128:
   if (((struct sockaddr *)&saidx.src)->sa_len != sizeof(struct sockaddr_in6))
    return 0;
   ((struct sockaddr_in6 *)&saidx.src)->sin6_port = 0;
   break;
  default:
   ;
 }
 switch (((struct sockaddr *)&saidx.dst)->sa_family) {
  case 129:
   if (((struct sockaddr *)&saidx.dst)->sa_len != sizeof(struct sockaddr_in))
    return 0;
   ((struct sockaddr_in *)&saidx.dst)->sin_port = 0;
   break;
  case 128:
   if (((struct sockaddr *)&saidx.dst)->sa_len != sizeof(struct sockaddr_in6))
    return 0;
   ((struct sockaddr_in6 *)&saidx.dst)->sin6_port = 0;
   break;
  default:
   ;
 }

 lck_mtx_lock(sadb_mutex);


 spi = key_do_getnewspi(spirange, &saidx);

 lck_mtx_unlock(sadb_mutex);

 return spi;
}

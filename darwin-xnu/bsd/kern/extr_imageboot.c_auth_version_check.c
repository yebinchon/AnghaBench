
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int const uuid_t ;
typedef unsigned long uuid_string_t ;


 int AUTHPRNT (char*,...) ;
 int EINVAL ;
 int OSKextGetUUIDForName (int ,int const) ;
 scalar_t__ bcmp (int const,int const*,unsigned long) ;
 int const* getuuidfromheader_safe (void*,size_t,unsigned long*) ;
 int kfree_safe (void*) ;
 int libkern_bundle ;
 unsigned long libkern_path ;
 int read_file (unsigned long,void**,size_t*) ;
 int uuid_unparse (int const,unsigned long) ;

__attribute__((used)) static int
auth_version_check(void)
{
 int err = 0;
 void *buf = ((void*)0);
 size_t bufsz = 4*1024*1024UL;



 err = read_file(libkern_path, &buf, &bufsz);
 if (err) {
  goto out;
 }

 unsigned long uuidsz = 0;
 const uuid_t *img_uuid = getuuidfromheader_safe(buf, bufsz, &uuidsz);
 if (img_uuid == ((void*)0) || uuidsz != sizeof(uuid_t)) {
  AUTHPRNT("invalid UUID (sz = %lu)", uuidsz);
  err = EINVAL;
  goto out;
 }


 uuid_t live_uuid;
 err = OSKextGetUUIDForName(libkern_bundle, live_uuid);
 if (err) {
  AUTHPRNT("could not find loaded libkern");
  goto out;
 }


 if (bcmp(live_uuid, img_uuid, uuidsz) != 0) {
  AUTHPRNT("UUID of running libkern does not match %s", libkern_path);

  uuid_string_t img_uuid_str, live_uuid_str;
  uuid_unparse(*img_uuid, img_uuid_str);
  uuid_unparse(live_uuid, live_uuid_str);
  AUTHPRNT("loaded libkern UUID =  %s", live_uuid_str);
  AUTHPRNT("on-disk libkern UUID = %s", img_uuid_str);

  err = EINVAL;
  goto out;
 }



out:
 kfree_safe(buf);
 return err;
}

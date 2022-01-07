
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AUTHDBG (char*,...) ;
 int AUTHPRNT (char*,...) ;
 int construct_chunklist_path (char const*,char**) ;
 int kfree_safe (char*) ;
 int read_file (char*,void**,size_t*) ;
 int validate_chunklist (void*,size_t) ;
 int validate_root_image (char const*,void*) ;

__attribute__((used)) static int
authenticate_root(const char *root_path)
{
 char *chunklist_path = ((void*)0);
 void *chunklist_buf = ((void*)0);
 size_t chunklist_len = 32*1024*1024UL;
 int err = 0;

 err = construct_chunklist_path(root_path, &chunklist_path);
 if (err) {
  AUTHPRNT("failed creating chunklist path");
  goto out;
 }

 AUTHDBG("validating root against chunklist %s", chunklist_path);






 AUTHDBG("reading chunklist");
 err = read_file(chunklist_path, &chunklist_buf, &chunklist_len);
 if (err) {
  AUTHPRNT("failed to read chunklist");
  goto out;
 }

 AUTHDBG("validating chunklist");
 err = validate_chunklist(chunklist_buf, chunklist_len);
 if (err < 0) {
  AUTHDBG("missing or incorrect signature on chunklist");
  goto out;
 } else if (err) {
  AUTHPRNT("failed to validate chunklist");
  goto out;
 } else {
  AUTHDBG("successfully validated chunklist");
 }

 AUTHDBG("validating root image against chunklist");
 err = validate_root_image(root_path, chunklist_buf);
 if (err) {
  AUTHPRNT("failed to validate root image against chunklist (%d)", err);
  goto out;
 }


 AUTHDBG("root image authenticated");

 out:
 kfree_safe(chunklist_buf);
 kfree_safe(chunklist_path);
 return err;
}

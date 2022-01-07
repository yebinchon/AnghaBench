
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AUTHPRNT (char*) ;
 int EINVAL ;
 int ENOMEM ;
 size_t MAXPATHLEN ;
 char* kalloc (size_t) ;
 int kfree_safe (char*) ;
 size_t strlcat (char*,char*,size_t) ;
 size_t strlcpy (char*,char const*,size_t) ;
 size_t strlen (char*) ;
 size_t strnlen (char const*,size_t) ;

__attribute__((used)) static int
construct_chunklist_path(const char *root_path, char **bufp)
{
 int err = 0;
 char *path = ((void*)0);
 size_t len = 0;

 path = kalloc(MAXPATHLEN);
 if (path == ((void*)0)) {
  AUTHPRNT("failed to allocate space for chunklist path");
  err = ENOMEM;
  goto out;
 }

 len = strnlen(root_path, MAXPATHLEN);
 if (len < MAXPATHLEN && len > strlen(".dmg")) {

 } else {
  AUTHPRNT("malformed root path");
  err = EINVAL;
  goto out;
 }

 len = strlcpy(path, root_path, MAXPATHLEN);
 if (len >= MAXPATHLEN) {
  AUTHPRNT("root path is too long");
  err = EINVAL;
  goto out;
 }

 path[len - strlen(".dmg")] = '\0';
 len = strlcat(path, ".chunklist", MAXPATHLEN);
 if (len >= MAXPATHLEN) {
  AUTHPRNT("chunklist path is too long");
  err = EINVAL;
  goto out;
 }

out:
 if (err) {
  kfree_safe(path);
 } else {
  *bufp = path;
 }
 return err;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int load_return_t ;


 int EACCES ;
 int EBADARCH ;
 int EBADEXEC ;
 int EBADMACHO ;
 int EIO ;
 int ENOENT ;
 int ENOMEM ;
 int ESHLIBVERS ;
__attribute__((used)) static int
load_return_to_errno(load_return_t lrtn)
{
 switch (lrtn) {
 case 128:
  return 0;
 case 140:
 case 139:
  return EBADARCH;
 case 138:
 case 137:
  return EBADMACHO;
 case 129:
  return ESHLIBVERS;
 case 132:
 case 130:
  return ENOMEM;
 case 131:
  return EACCES;
 case 135:
  return ENOENT;
 case 133:
  return EIO;
 case 134:
 case 136:
 default:
  return EBADEXEC;
 }
}

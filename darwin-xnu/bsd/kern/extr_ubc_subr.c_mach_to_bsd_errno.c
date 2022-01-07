
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int kern_return_t ;
typedef int errno_t ;


 int EACCES ;
 int EBUSY ;
 int ECONNRESET ;
 int EEXIST ;
 int EINTR ;
 int EINVAL ;
 int EIO ;
 int ENETDOWN ;
 int ENOENT ;
 int ENOMEM ;
 int ENOTSUP ;
 int EPERM ;
 int ETIMEDOUT ;
errno_t mach_to_bsd_errno(kern_return_t mach_err)
{
 switch (mach_err) {
 case 130:
  return 0;

 case 168:
 case 167:
 case 144:
 case 162:
 case 156:
 case 158:
 case 155:
 case 166:
 case 165:
 case 148:
 case 159:
 case 160:
 case 173:
 case 171:
 case 170:
 case 164:
 case 163:
 case 157:
 case 145:
 case 154:
 case 153:
  return EINVAL;

 case 135:
 case 143:
 case 140:
 case 136:
  return EACCES;

 case 139:
 case 134:
 case 128:
 case 161:
  return ENOMEM;

 case 169:
  return EIO;

 case 149:
 case 137:
 case 172:
  return EPERM;

 case 150:
  return EBUSY;

 case 174:
 case 147:
 case 133:
  return EEXIST;

 case 175:
  return EINTR;

 case 129:
 case 152:
 case 151:
 case 131:
  return ENOENT;

 case 132:
  return ECONNRESET;

 case 142:
  return ENOTSUP;

 case 146:
  return ENETDOWN;

 case 141:
  return ENOENT;

 case 138:
  return ETIMEDOUT;

 default:
  return EIO;
 }
}

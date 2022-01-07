
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
char *OsTypeToStr(UINT type)
{
 switch (type)
 {
 case 0:
  return "Unsupported OS by SoftEther VPN\0\n";
 case 145:
  return "Windows 95\0\n";
 case 144:
  return "Windows 98\0\n";
 case 141:
  return "Windows Millennium Edition\0\n";
 case 130:
  return "Windows 9x Unknown Version\0\n";
 case 136:
  return "Windows NT 4.0 Workstation\0\n";
 case 139:
  return "Windows NT 4.0 Server\0\n";
 case 138:
  return "Windows NT 4.0 Server, Enterprise Edition\0\n";
 case 140:
  return "BackOffice Server 4.5\0\n";
 case 137:
  return "Small Business Server 4.5\0\n";
 case 157:
  return "Windows 2000 Professional\0\n";
 case 155:
  return "Windows 2000 Server\0\n";
 case 160:
  return "Windows 2000 Advanced Server\0\n";
 case 158:
  return "Windows 2000 Datacenter Server\0\n";
 case 159:
  return "BackOffice Server 2000\0\n";
 case 156:
  return "Small Business Server 2000\0\n";
 case 129:
  return "Windows XP Home Edition\0\n";
 case 128:
  return "Windows XP Professional\0\n";
 case 149:
  return "Windows Server 2003 Web Edition\0\n";
 case 150:
  return "Windows Server 2003 Standard Edition\0\n";
 case 152:
  return "Windows Server 2003 Enterprise Edition\0\n";
 case 153:
  return "Windows Server 2003 Datacenter Edition\0\n";
 case 154:
  return "BackOffice Server 2003\0\n";
 case 151:
  return "Small Business Server 2003\0\n";
 case 143:
  return "Windows Vista\0\n";
 case 142:
  return "Windows Server 2008\0\n";
 case 148:
  return "Windows 7\0\n";
 case 133:
  return "Windows Server 2008 R2\0\n";
 case 147:
  return "Windows 8\0\n";
 case 132:
  return "Windows Server 2012\0\n";
 case 146:
  return "Windows 8.1\0\n";
 case 131:
  return "Windows Server 2012 R2\0\n";
 case 162:
  return "Windows 10\0\n";
 case 135:
  return "Windows Server 2016\0\n";
 case 161:
  return "Newer than Windows 10\0\n";
 case 134:
  return "Newer than Windows Server 2016\0\n";
 case 163:
  return "UNIX System\0\n";
 case 166:
  return "Linux\0\n";
 case 164:
  return "Sun Solaris\0\n";
 case 167:
  return "Gnu Cygwin\0\n";
 case 168:
  return "BSD System\0\n";
 case 165:
  return "Mac OS X\0\n";
 }

 return "Unknown OS";
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int my_pcname ;
struct TYPE_12__ {int HostIP; } ;
typedef TYPE_1__ VH ;
typedef int USHORT ;
typedef scalar_t__ UINT ;
typedef int UCHAR ;
struct TYPE_13__ {int Size; int Buf; } ;
typedef int LIST ;
typedef int IP ;
typedef TYPE_2__ BUF ;


 scalar_t__ Cmp (int*,int*,int) ;
 int EncodeNetBiosName (int*,char*) ;
 int Endian16 (int) ;
 scalar_t__ Endian32 (scalar_t__) ;
 int FreeBuf (TYPE_2__*) ;
 int FreeHostIPAddressList (int *) ;
 int * GetHostIPAddressList () ;
 int GetMachineHostName (char*,int) ;
 scalar_t__ IPToUINT (int *) ;
 scalar_t__ IsIP4 (int *) ;
 scalar_t__ IsIPPrivate (int *) ;
 int IsLocalHostIP4 (int *) ;
 int IsZeroIp (int *) ;
 int * LIST_DATA (int *,scalar_t__) ;
 scalar_t__ LIST_NUM (int *) ;
 int MAX_SIZE ;
 TYPE_2__* NewBuf () ;
 TYPE_2__* NewBufFromMemory (void*,scalar_t__) ;
 int ReadBuf (TYPE_2__*,int*,int) ;
 int SendUdp (TYPE_1__*,scalar_t__,scalar_t__,int ,scalar_t__,int ,int) ;
 unsigned long long Tick64 () ;
 int WHERE ;
 int WriteBuf (TYPE_2__*,...) ;
 int WriteBufBuf (TYPE_2__*,TYPE_2__*) ;
 int Zero (char*,int) ;

bool ProcessNetBiosNameQueryPacketForMyself(VH *v, UINT src_ip, UINT src_port, UINT dest_ip, UINT dest_port, void *data, UINT size)
{
 BUF *rb;
 USHORT tran_id;
 USHORT flags;
 USHORT num_query;
 USHORT zero1, zero2, zero3;
 UCHAR name_size;
 UCHAR encoded_name[32];
 UCHAR node_type;
 USHORT type, classid;
 UCHAR my_pc_encoded_name[32];
 bool ret = 0;

 if (v == ((void*)0) || data == ((void*)0))
 {
  return 0;
 }

 rb = NewBufFromMemory(data, size);

 ReadBuf(rb, &tran_id, sizeof(USHORT));

 ReadBuf(rb, &flags, sizeof(USHORT));
 flags = Endian16(flags);

 ReadBuf(rb, &num_query, sizeof(USHORT));
 num_query = Endian16(num_query);

 ReadBuf(rb, &zero1, sizeof(USHORT));
 ReadBuf(rb, &zero2, sizeof(USHORT));
 ReadBuf(rb, &zero3, sizeof(USHORT));

 ReadBuf(rb, &name_size, 1);

 ReadBuf(rb, encoded_name, 32);

 ReadBuf(rb, &node_type, 1);

 ReadBuf(rb, &type, sizeof(USHORT));
 type = Endian16(type);

 if (ReadBuf(rb, &classid, sizeof(USHORT)) == sizeof(USHORT))
 {
  classid = Endian16(classid);

  if (((flags >> 11) & 0x0F) == 0 &&
   num_query == 1 && name_size == 0x20 &&
   zero1 == 0 && zero2 == 0 && zero3 == 0 && node_type == 0 && type == 0x0020 && classid == 0x0001)
  {
   char my_pcname[MAX_SIZE];


   Zero(my_pcname, sizeof(my_pcname));
   GetMachineHostName(my_pcname, sizeof(my_pcname));

   EncodeNetBiosName(my_pc_encoded_name, my_pcname);

   if (Cmp(my_pc_encoded_name, encoded_name, 30) == 0)
   {

    BUF *sb = NewBuf();
    USHORT us;
    UINT ui;
    LIST *ip_list;
    BUF *ip_list_buf;
    bool found = 0;

    WriteBuf(sb, &tran_id, sizeof(USHORT));

    flags = Endian16(0x8500);
    WriteBuf(sb, &flags, sizeof(USHORT));

    num_query = 0;
    WriteBuf(sb, &num_query, sizeof(USHORT));

    us = Endian16(1);
    WriteBuf(sb, &us, sizeof(USHORT));

    us = 0;
    WriteBuf(sb, &us, sizeof(USHORT));
    WriteBuf(sb, &us, sizeof(USHORT));

    name_size = 0x20;
    WriteBuf(sb, &name_size, 1);

    WriteBuf(sb, encoded_name, 32);

    node_type = 0;
    WriteBuf(sb, &node_type, 1);

    type = Endian16(type);
    classid = Endian16(classid);

    WriteBuf(sb, &type, sizeof(USHORT));
    WriteBuf(sb, &classid, sizeof(USHORT));

    ui = Endian32((UINT)(Tick64() / 1000ULL));
    WriteBuf(sb, &ui, sizeof(UINT));

    ip_list_buf = NewBuf();

    ip_list = GetHostIPAddressList();
    if (ip_list != ((void*)0))
    {
     UINT i;


     for (i = 0;i < LIST_NUM(ip_list);i++)
     {
      IP *ip = LIST_DATA(ip_list, i);

      if (IsIP4(ip) && IsLocalHostIP4(ip) == 0 && IsZeroIp(ip) == 0)
      {
       if (IsIPPrivate(ip))
       {
        USHORT flags = Endian16(0x4000);
        UINT ip_uint = IPToUINT(ip);

        WriteBuf(ip_list_buf, &flags, sizeof(USHORT));
        WriteBuf(ip_list_buf, &ip_uint, sizeof(UINT));

        found = 1;
       }
      }
     }

     if (found == 0)
     {

      for (i = 0;i < LIST_NUM(ip_list);i++)
      {
       IP *ip = LIST_DATA(ip_list, i);

       if (IsIP4(ip) && IsLocalHostIP4(ip) == 0 && IsZeroIp(ip) == 0)
       {
        USHORT flags = Endian16(0x4000);
        UINT ip_uint = IPToUINT(ip);

        WriteBuf(ip_list_buf, &flags, sizeof(USHORT));
        WriteBuf(ip_list_buf, &ip_uint, sizeof(UINT));

        found = 1;
       }
      }
     }

     FreeHostIPAddressList(ip_list);
    }

    us = Endian16(ip_list_buf->Size);
    WriteBuf(sb, &us, sizeof(USHORT));

    WriteBufBuf(sb, ip_list_buf);

    SendUdp(v, src_ip, src_port, v->HostIP, dest_port, sb->Buf, sb->Size);

    FreeBuf(ip_list_buf);

    FreeBuf(sb);

    WHERE;
   }
  }
 }

 FreeBuf(rb);

 return ret;
}

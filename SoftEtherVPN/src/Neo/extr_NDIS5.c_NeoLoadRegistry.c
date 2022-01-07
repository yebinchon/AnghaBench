
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int UNICODE_STRING ;
typedef int UNICODE ;
typedef int UINT64 ;
typedef scalar_t__ UINT ;
typedef void* UCHAR ;
struct TYPE_11__ {int* MacAddress; int HardwareID; int HardwareID_Raw; int NdisConfig; } ;
struct TYPE_10__ {int Buffer; scalar_t__ MaximumLength; } ;
struct TYPE_8__ {int IntegerData; int StringData; } ;
struct TYPE_9__ {scalar_t__ ParameterType; TYPE_1__ ParameterData; } ;
typedef int NDIS_STATUS ;
typedef int NDIS_HANDLE ;
typedef TYPE_2__ NDIS_CONFIGURATION_PARAMETER ;
typedef int BOOL ;
typedef TYPE_3__ ANSI_STRING ;


 int FALSE ;
 int FreeUnicode (int *) ;
 int GetUnicode (int *) ;
 scalar_t__ MAX_SIZE ;
 scalar_t__ NEO_MAC_ADDRESS_SIZE ;
 scalar_t__ NEO_MAX_SPEED_DEFAULT ;
 scalar_t__ NG (int ) ;
 int NdisCloseConfiguration (int ) ;
 int NdisOpenConfiguration (int *,int *,int ) ;
 scalar_t__ NdisParameterInteger ;
 scalar_t__ NdisParameterString ;
 int NdisReadConfiguration (int *,TYPE_2__**,int ,int ,scalar_t__) ;
 int NdisReadNetworkAddress (int *,void**,scalar_t__*,int ) ;
 int NdisUnicodeStringToAnsiString (TYPE_3__*,int *) ;
 int NeoCopy (int*,void*,scalar_t__) ;
 int NeoFree (int ) ;
 int NeoZero (TYPE_3__*,int) ;
 int NeoZeroMalloc (scalar_t__) ;
 int * NewUnicode (char*) ;
 int TRUE ;
 int _strupr (int ) ;
 TYPE_4__* ctx ;
 int keep_link ;
 scalar_t__ max_speed ;
 int strcpy (int ,int ) ;

BOOL NeoLoadRegistry()
{
 void *buf;
 NDIS_STATUS ret;
 UINT size;
 NDIS_HANDLE config;
 NDIS_CONFIGURATION_PARAMETER *param;
 UNICODE *name;
 ANSI_STRING ansi;
 UNICODE_STRING *unicode;
 UINT speed;
 BOOL keep;


 NdisOpenConfiguration(&ret, &config, ctx->NdisConfig);
 if (NG(ret))
 {

  return FALSE;
 }


 NdisReadNetworkAddress(&ret, &buf, &size, config);
 if (NG(ret))
 {

  NdisCloseConfiguration(config);
  return FALSE;
 }


 if (size != NEO_MAC_ADDRESS_SIZE)
 {

  NdisCloseConfiguration(config);
  return FALSE;
 }
 NeoCopy(ctx->MacAddress, buf, NEO_MAC_ADDRESS_SIZE);

 if (ctx->MacAddress[0] == 0x00 &&
  ctx->MacAddress[1] == 0x00 &&
  ctx->MacAddress[2] == 0x01 &&
  ctx->MacAddress[3] == 0x00 &&
  ctx->MacAddress[4] == 0x00 &&
  ctx->MacAddress[5] == 0x01)
 {

  UINT ptr32 = (UINT)((UINT64)ctx);

  ctx->MacAddress[0] = 0x00;
  ctx->MacAddress[1] = 0xAD;
  ctx->MacAddress[2] = ((UCHAR *)(&ptr32))[0];
  ctx->MacAddress[3] = ((UCHAR *)(&ptr32))[1];
  ctx->MacAddress[4] = ((UCHAR *)(&ptr32))[2];
  ctx->MacAddress[5] = ((UCHAR *)(&ptr32))[3];
 }


 name = NewUnicode("MatchingDeviceId");


 NdisReadConfiguration(&ret, &param, config, GetUnicode(name), NdisParameterString);
 FreeUnicode(name);
 if (NG(ret))
 {

  NdisCloseConfiguration(config);
  return FALSE;
 }

 if (param->ParameterType != NdisParameterString)
 {

  NdisCloseConfiguration(config);
  return FALSE;
 }
 unicode = &param->ParameterData.StringData;


 NeoZero(&ansi, sizeof(ANSI_STRING));
 ansi.MaximumLength = MAX_SIZE - 1;
 ansi.Buffer = NeoZeroMalloc(MAX_SIZE);


 NdisUnicodeStringToAnsiString(&ansi, unicode);

 strcpy(ctx->HardwareID, ansi.Buffer);
 strcpy(ctx->HardwareID_Raw, ctx->HardwareID);

 _strupr(ctx->HardwareID);

 NeoFree(ansi.Buffer);


 name = NewUnicode("MaxSpeed");
 NdisReadConfiguration(&ret, &param, config, GetUnicode(name), NdisParameterInteger);
 FreeUnicode(name);

 if (NG(ret) || param->ParameterType != NdisParameterInteger)
 {
  speed = NEO_MAX_SPEED_DEFAULT;
 }
 else
 {
  speed = param->ParameterData.IntegerData * 10000;
 }

 max_speed = speed;


 name = NewUnicode("KeepLink");
 NdisReadConfiguration(&ret, &param, config, GetUnicode(name), NdisParameterInteger);
 FreeUnicode(name);

 if (NG(ret) || param->ParameterType != NdisParameterInteger)
 {
  keep = 0;
 }
 else
 {
  keep = (param->ParameterData.IntegerData == 0 ? 0 : 1);
 }

 keep_link = keep;


 NdisCloseConfiguration(config);

 return TRUE;
}

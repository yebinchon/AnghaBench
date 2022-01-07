
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_8__ ;
typedef struct TYPE_17__ TYPE_7__ ;
typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int url3 ;
typedef int url2 ;
typedef int t ;
typedef int snat_t ;
typedef int machine_name ;
typedef int machine_key_str ;
typedef int machine_key ;
typedef int key_str ;
typedef int key_hash_str ;
typedef int key_hash ;
typedef int current_region ;
typedef int current_azure_ip ;
typedef int cert_hash ;
typedef int add_header_value ;
typedef int add_header_name ;
typedef scalar_t__ UINT ;
typedef int UCHAR ;
struct TYPE_18__ {int OsType; } ;
struct TYPE_17__ {TYPE_4__* AzureClient; } ;
struct TYPE_16__ {scalar_t__ Build; char* CurrentDDnsFqdn; TYPE_7__* Server; } ;
struct TYPE_15__ {char* ConnectingAzureIp; int Lock; } ;
struct TYPE_14__ {int Size; int * Buf; } ;
struct TYPE_13__ {int Err_IPv4_GetMyIp; int Err_IPv6_GetMyIp; char* CurrentHostName; char* CurrentFqdn; char* CurrentIPv4; char* CurrentIPv6; char* DnsSuffix; char* CurrentAzureIp; char* CurrentAzureSignature; char* AzureCertHash; int KeyChanged; int * Key; int Lock; TYPE_6__* Cedar; int CurrentAzureTimestamp; int InternetSetting; } ;
struct TYPE_12__ {char* NewHostname; } ;
typedef int PACK ;
typedef char INTERNET_SETTING ;
typedef TYPE_1__ DDNS_REGISTER_PARAM ;
typedef TYPE_2__ DDNS_CLIENT ;
typedef TYPE_3__ BUF ;
typedef TYPE_4__ AZURE_CLIENT ;


 int BinToStr (char*,int,int *,int) ;
 int Copy (char*,int *,int) ;
 int DCGenNewKey (int *) ;
 int DDNS_CERT_HASH ;
 int DDNS_COMM_TIMEOUT ;
 int DDNS_CONNECT_TIMEOUT ;
 char* DDNS_REPLACE_URL_FOR_EAST_BFLETS ;
 char* DDNS_REPLACE_URL_FOR_EAST_NGN ;
 char* DDNS_REPLACE_URL_FOR_WEST_NGN ;
 int DDNS_RPC_MAX_RECV_SIZE ;
 int DDNS_SNI_VER_STRING ;
 char* DDNS_URL_V4_ALT ;
 char* DDNS_URL_V4_GLOBAL ;
 char* DDNS_URL_V6_ALT ;
 char* DDNS_URL_V6_GLOBAL ;
 int DDNS_VERSION ;
 int Debug (char*,char*,...) ;
 scalar_t__ DetectFletsType () ;
 scalar_t__ ERR_CONNECT_FAILED ;
 scalar_t__ ERR_DDNS_DISCONNECTED ;
 scalar_t__ ERR_DISCONNECTED ;
 scalar_t__ ERR_DUPLICATE_DDNS_KEY ;
 scalar_t__ ERR_INTERNAL_ERROR ;
 scalar_t__ ERR_NO_ERROR ;
 int ExtractAndApplyDynList (int *) ;
 scalar_t__ FLETS_DETECT_TYPE_EAST_BFLETS_PRIVATE ;
 scalar_t__ FLETS_DETECT_TYPE_EAST_NGN_PRIVATE ;
 scalar_t__ FLETS_DETECT_TYPE_WEST_NGN_PRIVATE ;
 int Format (char*,int,char*,...) ;
 int FreeBuf (TYPE_3__*) ;
 int FreePack (int *) ;
 int GetCurrentMachineIpProcessHash (int *) ;
 scalar_t__ GetErrorFromPack (int *) ;
 int GetMachineHostName (char*,int) ;
 TYPE_8__* GetOsInfo () ;
 int Is64 () ;
 int IsEmptyStr (char*) ;
 int IsUseAlternativeHostname () ;
 int Lock (int ) ;
 int MAX_SIZE ;
 int MsIs64BitWindows () ;
 int * NewPack () ;
 int NnSetSecureNatTargetHostname (char*) ;
 int PackAddBool (int *,char*,int) ;
 int PackAddInt (int *,char*,int) ;
 int PackAddStr (int *,char*,char*) ;
 int PackGetInt64 (int *,char*) ;
 int PackGetStr (int *,char*,char*,int) ;
 int Rand64 () ;
 int ReplaceStr (char*,int,char*,char*,char*) ;
 int SHA1_SIZE ;
 int SetCurrentDDnsFqdn (char*) ;
 int Sha1 (int *,char*,int ) ;
 int SiIsAzureEnabled (TYPE_7__*) ;
 int SiUpdateCurrentRegion (TYPE_6__*,char*,int) ;
 int StrCpy (char*,int,char*) ;
 int StrLen (char*) ;
 int StrLower (char*) ;
 TYPE_3__* StrToBin (int ) ;
 int StrUpper (char*) ;
 int UniDebug (char*,int ) ;
 int Unlock (int ) ;
 int * WpcCallEx2 (char*,char*,int ,int ,char*,int *,int *,int *,int *,int,int *,int ,char*,char*,int ) ;
 int Zero (char*,int) ;
 int _E (scalar_t__) ;

UINT DCRegister(DDNS_CLIENT *c, bool ipv6, DDNS_REGISTER_PARAM *p, char *replace_v6)
{
 char *url;
 char url2[MAX_SIZE];
 char url3[MAX_SIZE];
 PACK *req, *ret;
 char key_str[MAX_SIZE];
 UCHAR machine_key[SHA1_SIZE];
 char machine_key_str[MAX_SIZE];
 char machine_name[MAX_SIZE];
 BUF *cert_hash = ((void*)0);
 UINT err = ERR_INTERNAL_ERROR;
 UCHAR key_hash[SHA1_SIZE];
 char key_hash_str[MAX_SIZE];
 bool use_azure = 0;
 char current_azure_ip[MAX_SIZE];
 INTERNET_SETTING t;
 UINT build = 0;
 char add_header_name[64];
 char add_header_value[64];

 if (c == ((void*)0))
 {
  return ERR_INTERNAL_ERROR;
 }

 Zero(add_header_name, sizeof(add_header_name));
 Zero(add_header_value, sizeof(add_header_value));

 Zero(current_azure_ip, sizeof(current_azure_ip));

 GetCurrentMachineIpProcessHash(machine_key);
 BinToStr(machine_key_str, sizeof(machine_key_str), machine_key, sizeof(machine_key));

 GetMachineHostName(machine_name, sizeof(machine_name));
 StrLower(machine_name);

 if (ipv6 == 0)
 {
  url = DDNS_URL_V4_GLOBAL;

  if (IsUseAlternativeHostname())
  {
   url = DDNS_URL_V4_ALT;
  }
 }
 else
 {
  url = DDNS_URL_V6_GLOBAL;

  if (IsUseAlternativeHostname())
  {
   url = DDNS_URL_V6_ALT;
  }

  if (replace_v6)
  {
   url = replace_v6;
  }
 }

 Zero(&t, sizeof(t));
 if (ipv6 == 0)
 {

  Copy(&t, &c->InternetSetting, sizeof(INTERNET_SETTING));
 }

 if (ipv6 == 0)
 {

  if (c->Cedar->Server != ((void*)0))
  {
   AZURE_CLIENT *ac = c->Cedar->Server->AzureClient;

   if (ac != ((void*)0))
   {
    use_azure = SiIsAzureEnabled(c->Cedar->Server);

    if (use_azure)
    {
     Lock(ac->Lock);
     {
      StrCpy(current_azure_ip, sizeof(current_azure_ip), ac->ConnectingAzureIp);
     }
     Unlock(ac->Lock);
    }
   }
  }
 }

 req = NewPack();
 BinToStr(key_str, sizeof(key_str), c->Key, sizeof(c->Key));
 StrUpper(key_str);
 PackAddStr(req, "key", key_str);


 build = c->Cedar->Build;


 PackAddInt(req, "build", build);
 PackAddInt(req, "osinfo", GetOsInfo()->OsType);
 PackAddInt(req, "is_64bit", Is64());



 PackAddBool(req, "is_softether", 1);
 PackAddBool(req, "is_packetix", 0);
 PackAddStr(req, "machine_key", machine_key_str);
 PackAddStr(req, "machine_name", machine_name);
 PackAddInt(req, "lasterror_ipv4", c->Err_IPv4_GetMyIp);
 PackAddInt(req, "lasterror_ipv6", c->Err_IPv6_GetMyIp);
 PackAddBool(req, "use_azure", use_azure);
 PackAddStr(req, "product_str", "SoftEther OSS");
 PackAddInt(req, "ddns_protocol_version", DDNS_VERSION);
 PackAddInt(req, "ddns_oss", 1);


 if (use_azure)
 {
  Debug("current_azure_ip = %s\n", current_azure_ip);
  PackAddStr(req, "current_azure_ip", current_azure_ip);
 }

 Sha1(key_hash, key_str, StrLen(key_str));
 BinToStr(key_hash_str, sizeof(key_hash_str), key_hash, sizeof(key_hash));
 StrLower(key_hash_str);

 if (p != ((void*)0))
 {
  if (IsEmptyStr(p->NewHostname) == 0)
  {
   PackAddStr(req, "new_hostname", p->NewHostname);
  }
 }



 Format(url2, sizeof(url2), "%s?v=%I64u", url, Rand64());
 Format(url3, sizeof(url3), url2, key_hash_str[2], key_hash_str[3]);

 ReplaceStr(url3, sizeof(url3), url3, "https://", "http://");

 ReplaceStr(url3, sizeof(url3), url3, ".servers", ".open.servers");

 cert_hash = StrToBin(DDNS_CERT_HASH);

 Debug("WpcCall: %s\n", url3);
 ret = WpcCallEx2(url3, &t, DDNS_CONNECT_TIMEOUT, DDNS_COMM_TIMEOUT, "register", req,
  ((void*)0), ((void*)0), ((cert_hash != ((void*)0) && ((cert_hash->Size % SHA1_SIZE) == 0)) ? cert_hash->Buf : ((void*)0)),
  (cert_hash != ((void*)0) ? cert_hash->Size / SHA1_SIZE : 0),
  ((void*)0), DDNS_RPC_MAX_RECV_SIZE,
  add_header_name, add_header_value,
  DDNS_SNI_VER_STRING);
 Debug("WpcCall Ret: %u\n", ret);

 FreeBuf(cert_hash);

 FreePack(req);

 err = GetErrorFromPack(ret);

 ExtractAndApplyDynList(ret);


 Lock(c->Lock);
 {
  if (err == ERR_NO_ERROR)
  {
   char snat_t[MAX_SIZE];
   char current_region[128];


   PackGetStr(ret, "current_hostname", c->CurrentHostName, sizeof(c->CurrentHostName));
   PackGetStr(ret, "current_fqdn", c->CurrentFqdn, sizeof(c->CurrentFqdn));
   PackGetStr(ret, "current_ipv4", c->CurrentIPv4, sizeof(c->CurrentIPv4));
   PackGetStr(ret, "current_ipv6", c->CurrentIPv6, sizeof(c->CurrentIPv6));
   PackGetStr(ret, "dns_suffix", c->DnsSuffix, sizeof(c->DnsSuffix));
   PackGetStr(ret, "current_region", current_region, sizeof(current_region));


   Zero(snat_t, sizeof(snat_t));
   PackGetStr(ret, "snat_t", snat_t, sizeof(snat_t));
   NnSetSecureNatTargetHostname(snat_t);

   if (ipv6 == 0)
   {
    char cert_hash[MAX_SIZE];

    PackGetStr(ret, "current_azure_ip", c->CurrentAzureIp, sizeof(c->CurrentAzureIp));
    c->CurrentAzureTimestamp = PackGetInt64(ret, "current_azure_timestamp");
    PackGetStr(ret, "current_azure_signature", c->CurrentAzureSignature, sizeof(c->CurrentAzureSignature));

    Zero(cert_hash, sizeof(cert_hash));
    PackGetStr(ret, "azure_cert_hash", cert_hash, sizeof(cert_hash));

    if (IsEmptyStr(cert_hash) == 0)
    {
     StrCpy(c->AzureCertHash, sizeof(c->AzureCertHash), cert_hash);
    }
   }

   StrCpy(c->Cedar->CurrentDDnsFqdn, sizeof(c->Cedar->CurrentDDnsFqdn), c->CurrentFqdn);

   Debug("current_hostname=%s, current_fqdn=%s, current_ipv4=%s, current_ipv6=%s, current_azure_ip=%s, CurrentAzureTimestamp=%I64u, CurrentAzureSignature=%s, CertHash=%s\n",
    c->CurrentHostName, c->CurrentFqdn,
    c->CurrentIPv4, c->CurrentIPv6,
    c->CurrentAzureIp, c->CurrentAzureTimestamp, c->CurrentAzureSignature, c->AzureCertHash);

   if (IsEmptyStr(current_region) == 0)
   {

    SiUpdateCurrentRegion(c->Cedar, current_region, 0);
   }
  }
 }
 Unlock(c->Lock);

 if (IsEmptyStr(c->CurrentFqdn) == 0)
 {
  SetCurrentDDnsFqdn(c->CurrentFqdn);
 }


 FreePack(ret);

 UniDebug(L"DCRegister Error: %s\n", _E(err));

 if (err == ERR_DUPLICATE_DDNS_KEY)
 {

  DCGenNewKey(c->Key);
  c->KeyChanged = 1;
 }

 if (err == ERR_DISCONNECTED)
 {
  err = ERR_DDNS_DISCONNECTED;
 }

 if (IsUseAlternativeHostname() == 0)
 {
  if (err == ERR_CONNECT_FAILED)
  {
   if (ipv6 && replace_v6 == ((void*)0))
   {
    UINT type = DetectFletsType();

    if (type & FLETS_DETECT_TYPE_EAST_BFLETS_PRIVATE && err != ERR_NO_ERROR)
    {
     err = DCRegister(c, ipv6, p, DDNS_REPLACE_URL_FOR_EAST_BFLETS);
    }

    if (type & FLETS_DETECT_TYPE_EAST_NGN_PRIVATE && err != ERR_NO_ERROR)
    {
     err = DCRegister(c, ipv6, p, DDNS_REPLACE_URL_FOR_EAST_NGN);
    }

    if (type & FLETS_DETECT_TYPE_WEST_NGN_PRIVATE && err != ERR_NO_ERROR)
    {
     err = DCRegister(c, ipv6, p, DDNS_REPLACE_URL_FOR_WEST_NGN);
    }
   }
  }
 }

 return err;
}

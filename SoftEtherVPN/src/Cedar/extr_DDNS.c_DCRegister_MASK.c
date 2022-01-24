#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_8__ ;
typedef  struct TYPE_17__   TYPE_7__ ;
typedef  struct TYPE_16__   TYPE_6__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  url3 ;
typedef  int /*<<< orphan*/  url2 ;
typedef  int /*<<< orphan*/  t ;
typedef  int /*<<< orphan*/  snat_t ;
typedef  int /*<<< orphan*/  machine_name ;
typedef  int /*<<< orphan*/  machine_key_str ;
typedef  int /*<<< orphan*/  machine_key ;
typedef  int /*<<< orphan*/  key_str ;
typedef  int /*<<< orphan*/  key_hash_str ;
typedef  int /*<<< orphan*/  key_hash ;
typedef  int /*<<< orphan*/  current_region ;
typedef  int /*<<< orphan*/  current_azure_ip ;
typedef  int /*<<< orphan*/  cert_hash ;
typedef  int /*<<< orphan*/  add_header_value ;
typedef  int /*<<< orphan*/  add_header_name ;
typedef  scalar_t__ UINT ;
typedef  int /*<<< orphan*/  UCHAR ;
struct TYPE_18__ {int OsType; } ;
struct TYPE_17__ {TYPE_4__* AzureClient; } ;
struct TYPE_16__ {scalar_t__ Build; char* CurrentDDnsFqdn; TYPE_7__* Server; } ;
struct TYPE_15__ {char* ConnectingAzureIp; int /*<<< orphan*/  Lock; } ;
struct TYPE_14__ {int Size; int /*<<< orphan*/ * Buf; } ;
struct TYPE_13__ {int Err_IPv4_GetMyIp; int Err_IPv6_GetMyIp; char* CurrentHostName; char* CurrentFqdn; char* CurrentIPv4; char* CurrentIPv6; char* DnsSuffix; char* CurrentAzureIp; char* CurrentAzureSignature; char* AzureCertHash; int KeyChanged; int /*<<< orphan*/ * Key; int /*<<< orphan*/  Lock; TYPE_6__* Cedar; int /*<<< orphan*/  CurrentAzureTimestamp; int /*<<< orphan*/  InternetSetting; } ;
struct TYPE_12__ {char* NewHostname; } ;
typedef  int /*<<< orphan*/  PACK ;
typedef  char INTERNET_SETTING ;
typedef  TYPE_1__ DDNS_REGISTER_PARAM ;
typedef  TYPE_2__ DDNS_CLIENT ;
typedef  TYPE_3__ BUF ;
typedef  TYPE_4__ AZURE_CLIENT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  DDNS_CERT_HASH ; 
 int /*<<< orphan*/  DDNS_COMM_TIMEOUT ; 
 int /*<<< orphan*/  DDNS_CONNECT_TIMEOUT ; 
 char* DDNS_REPLACE_URL_FOR_EAST_BFLETS ; 
 char* DDNS_REPLACE_URL_FOR_EAST_NGN ; 
 char* DDNS_REPLACE_URL_FOR_WEST_NGN ; 
 int /*<<< orphan*/  DDNS_RPC_MAX_RECV_SIZE ; 
 int /*<<< orphan*/  DDNS_SNI_VER_STRING ; 
 char* DDNS_URL_V4_ALT ; 
 char* DDNS_URL_V4_GLOBAL ; 
 char* DDNS_URL_V6_ALT ; 
 char* DDNS_URL_V6_GLOBAL ; 
 int DDNS_VERSION ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,...) ; 
 scalar_t__ FUNC4 () ; 
 scalar_t__ ERR_CONNECT_FAILED ; 
 scalar_t__ ERR_DDNS_DISCONNECTED ; 
 scalar_t__ ERR_DISCONNECTED ; 
 scalar_t__ ERR_DUPLICATE_DDNS_KEY ; 
 scalar_t__ ERR_INTERNAL_ERROR ; 
 scalar_t__ ERR_NO_ERROR ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FLETS_DETECT_TYPE_EAST_BFLETS_PRIVATE ; 
 scalar_t__ FLETS_DETECT_TYPE_EAST_NGN_PRIVATE ; 
 scalar_t__ FLETS_DETECT_TYPE_WEST_NGN_PRIVATE ; 
 int /*<<< orphan*/  FUNC6 (char*,int,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (char*,int) ; 
 TYPE_8__* FUNC12 () ; 
 int FUNC13 () ; 
 int FUNC14 (char*) ; 
 int FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int MAX_SIZE ; 
 int FUNC17 () ; 
 int /*<<< orphan*/ * FUNC18 () ; 
 int /*<<< orphan*/  FUNC19 (char*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC25 () ; 
 int /*<<< orphan*/  FUNC26 (char*,int,char*,char*,char*) ; 
 int SHA1_SIZE ; 
 int /*<<< orphan*/  FUNC27 (char*) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int FUNC29 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC30 (TYPE_6__*,char*,int) ; 
 int /*<<< orphan*/  FUNC31 (char*,int,char*) ; 
 int /*<<< orphan*/  FUNC32 (char*) ; 
 int /*<<< orphan*/  FUNC33 (char*) ; 
 TYPE_3__* FUNC34 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC35 (char*) ; 
 int /*<<< orphan*/  FUNC36 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC37 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC38 (char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC39 (char*,int) ; 
 int /*<<< orphan*/  FUNC40 (scalar_t__) ; 

UINT FUNC41(DDNS_CLIENT *c, bool ipv6, DDNS_REGISTER_PARAM *p, char *replace_v6)
{
	char *url;
	char url2[MAX_SIZE];
	char url3[MAX_SIZE];
	PACK *req, *ret;
	char key_str[MAX_SIZE];
	UCHAR machine_key[SHA1_SIZE];
	char machine_key_str[MAX_SIZE];
	char machine_name[MAX_SIZE];
	BUF *cert_hash = NULL;
	UINT err = ERR_INTERNAL_ERROR;
	UCHAR key_hash[SHA1_SIZE];
	char key_hash_str[MAX_SIZE];
	bool use_azure = false;
	char current_azure_ip[MAX_SIZE];
	INTERNET_SETTING t;
	UINT build = 0;
	char add_header_name[64];
	char add_header_value[64];
	// Validate arguments
	if (c == NULL)
	{
		return ERR_INTERNAL_ERROR;
	}

	FUNC39(add_header_name, sizeof(add_header_name));
	FUNC39(add_header_value, sizeof(add_header_value));

	FUNC39(current_azure_ip, sizeof(current_azure_ip));

	FUNC9(machine_key);
	FUNC0(machine_key_str, sizeof(machine_key_str), machine_key, sizeof(machine_key));

	FUNC11(machine_name, sizeof(machine_name));
	FUNC33(machine_name);

	if (ipv6 == false)
	{
		url = DDNS_URL_V4_GLOBAL;

		if (FUNC15())
		{
			url = DDNS_URL_V4_ALT;
		}
	}
	else
	{
		url = DDNS_URL_V6_GLOBAL;

		if (FUNC15())
		{
			url = DDNS_URL_V6_ALT;
		}

		if (replace_v6)
		{
			url = replace_v6;
		}
	}

	FUNC39(&t, sizeof(t));
	if (ipv6 == false)
	{
		// Proxy Setting
		FUNC1(&t, &c->InternetSetting, sizeof(INTERNET_SETTING));
	}

	if (ipv6 == false)
	{
		// Get the current status of the VPN Azure Client
		if (c->Cedar->Server != NULL)
		{
			AZURE_CLIENT *ac = c->Cedar->Server->AzureClient;

			if (ac != NULL)
			{
				use_azure = FUNC29(c->Cedar->Server);

				if (use_azure)
				{
					FUNC16(ac->Lock);
					{
						FUNC31(current_azure_ip, sizeof(current_azure_ip), ac->ConnectingAzureIp);
					}
					FUNC37(ac->Lock);
				}
			}
		}
	}

	req = FUNC18();
	FUNC0(key_str, sizeof(key_str), c->Key, sizeof(c->Key));
	FUNC35(key_str);
	FUNC22(req, "key", key_str);

	// Build Number
	build = c->Cedar->Build;


	FUNC21(req, "build", build);
	FUNC21(req, "osinfo", FUNC12()->OsType);
	FUNC21(req, "is_64bit", FUNC13());
#ifdef	OS_WIN32
	PackAddInt(req, "is_windows_64bit", MsIs64BitWindows());
#endif	// OS_WIN32
	FUNC20(req, "is_softether", true);
	FUNC20(req, "is_packetix", false);
	FUNC22(req, "machine_key", machine_key_str);
	FUNC22(req, "machine_name", machine_name);
	FUNC21(req, "lasterror_ipv4", c->Err_IPv4_GetMyIp);
	FUNC21(req, "lasterror_ipv6", c->Err_IPv6_GetMyIp);
	FUNC20(req, "use_azure", use_azure);
	FUNC22(req, "product_str", "SoftEther OSS");
	FUNC21(req, "ddns_protocol_version", DDNS_VERSION);
	FUNC21(req, "ddns_oss", 1);


	if (use_azure)
	{
		FUNC3("current_azure_ip = %s\n", current_azure_ip);
		FUNC22(req, "current_azure_ip", current_azure_ip);
	}

	FUNC28(key_hash, key_str, FUNC32(key_str));
	FUNC0(key_hash_str, sizeof(key_hash_str), key_hash, sizeof(key_hash));
	FUNC33(key_hash_str);

	if (p != NULL)
	{
		if (FUNC14(p->NewHostname) == false)
		{
			FUNC22(req, "new_hostname", p->NewHostname);
		}
	}



	FUNC6(url2, sizeof(url2), "%s?v=%I64u", url, FUNC25());
	FUNC6(url3, sizeof(url3), url2, key_hash_str[2], key_hash_str[3]);

	FUNC26(url3, sizeof(url3), url3, "https://", "http://");

	FUNC26(url3, sizeof(url3), url3, ".servers", ".open.servers");

	cert_hash = FUNC34(DDNS_CERT_HASH);

	FUNC3("WpcCall: %s\n", url3);
	ret = FUNC38(url3, &t, DDNS_CONNECT_TIMEOUT, DDNS_COMM_TIMEOUT, "register", req,
		NULL, NULL, ((cert_hash != NULL && ((cert_hash->Size % SHA1_SIZE) == 0)) ? cert_hash->Buf : NULL),
		(cert_hash != NULL ? cert_hash->Size / SHA1_SIZE : 0),
		NULL, DDNS_RPC_MAX_RECV_SIZE,
		add_header_name, add_header_value,
		DDNS_SNI_VER_STRING);
	FUNC3("WpcCall Ret: %u\n", ret);

	FUNC7(cert_hash);

	FUNC8(req);

	err = FUNC10(ret);

	FUNC5(ret);

	// Status update
	FUNC16(c->Lock);
	{
		if (err == ERR_NO_ERROR)
		{
			char snat_t[MAX_SIZE];
			char current_region[128];

			// Current host name
			FUNC24(ret, "current_hostname", c->CurrentHostName, sizeof(c->CurrentHostName));
			FUNC24(ret, "current_fqdn", c->CurrentFqdn, sizeof(c->CurrentFqdn));
			FUNC24(ret, "current_ipv4", c->CurrentIPv4, sizeof(c->CurrentIPv4));
			FUNC24(ret, "current_ipv6", c->CurrentIPv6, sizeof(c->CurrentIPv6));
			FUNC24(ret, "dns_suffix", c->DnsSuffix, sizeof(c->DnsSuffix));
			FUNC24(ret, "current_region", current_region, sizeof(current_region));

			// SecureNAT connectivity check parameters
			FUNC39(snat_t, sizeof(snat_t));
			FUNC24(ret, "snat_t", snat_t, sizeof(snat_t));
			FUNC19(snat_t);

			if (ipv6 == false)
			{
				char cert_hash[MAX_SIZE];

				FUNC24(ret, "current_azure_ip", c->CurrentAzureIp, sizeof(c->CurrentAzureIp));
				c->CurrentAzureTimestamp = FUNC23(ret, "current_azure_timestamp");
				FUNC24(ret, "current_azure_signature", c->CurrentAzureSignature, sizeof(c->CurrentAzureSignature));

				FUNC39(cert_hash, sizeof(cert_hash));
				FUNC24(ret, "azure_cert_hash", cert_hash, sizeof(cert_hash));

				if (FUNC14(cert_hash) == false)
				{
					FUNC31(c->AzureCertHash, sizeof(c->AzureCertHash), cert_hash);
				}
			}

			FUNC31(c->Cedar->CurrentDDnsFqdn, sizeof(c->Cedar->CurrentDDnsFqdn), c->CurrentFqdn);

			FUNC3("current_hostname=%s, current_fqdn=%s, current_ipv4=%s, current_ipv6=%s, current_azure_ip=%s, CurrentAzureTimestamp=%I64u, CurrentAzureSignature=%s, CertHash=%s\n",
				c->CurrentHostName, c->CurrentFqdn,
				c->CurrentIPv4, c->CurrentIPv6,
				c->CurrentAzureIp, c->CurrentAzureTimestamp, c->CurrentAzureSignature, c->AzureCertHash);

			if (FUNC14(current_region) == false)
			{
				// Update the current region
				FUNC30(c->Cedar, current_region, false);
			}
		}
	}
	FUNC37(c->Lock);

	if (FUNC14(c->CurrentFqdn) == false)
	{
		FUNC27(c->CurrentFqdn);
	}


	FUNC8(ret);

	FUNC36(L"DCRegister Error: %s\n", FUNC40(err));

	if (err == ERR_DUPLICATE_DDNS_KEY)
	{
		// Key duplication
		FUNC2(c->Key);
		c->KeyChanged = true;
	}

	if (err == ERR_DISCONNECTED)
	{
		err = ERR_DDNS_DISCONNECTED;
	}

	if (FUNC15() == false)
	{
		if (err == ERR_CONNECT_FAILED)
		{
			if (ipv6 && replace_v6 == NULL)
			{
				UINT type = FUNC4();

				if (type & FLETS_DETECT_TYPE_EAST_BFLETS_PRIVATE && err != ERR_NO_ERROR)
				{
					err = FUNC41(c, ipv6, p, DDNS_REPLACE_URL_FOR_EAST_BFLETS);
				}

				if (type & FLETS_DETECT_TYPE_EAST_NGN_PRIVATE && err != ERR_NO_ERROR)
				{
					err = FUNC41(c, ipv6, p, DDNS_REPLACE_URL_FOR_EAST_NGN);
				}

				if (type & FLETS_DETECT_TYPE_WEST_NGN_PRIVATE && err != ERR_NO_ERROR)
				{
					err = FUNC41(c, ipv6, p, DDNS_REPLACE_URL_FOR_WEST_NGN);
				}
			}
		}
	}

	return err;
}
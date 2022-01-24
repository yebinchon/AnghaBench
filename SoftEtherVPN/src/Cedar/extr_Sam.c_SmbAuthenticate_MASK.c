#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  requiremember ;
typedef  int /*<<< orphan*/  ntlm_timeout ;
typedef  int /*<<< orphan*/  buffer ;
typedef  int /*<<< orphan*/  answer ;
typedef  int UINT ;
typedef  int /*<<< orphan*/  UCHAR ;
struct TYPE_4__ {int /*<<< orphan*/  Buf; } ;
typedef  scalar_t__ PID ;
typedef  int /*<<< orphan*/  FILE ;
typedef  TYPE_1__ BUF ;

/* Variables and functions */
 unsigned int FUNC0 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 char* FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 unsigned int FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 scalar_t__ FUNC9 (char*,char**,int*) ; 
 TYPE_1__* FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (char*,int) ; 
 int FUNC12 (unsigned int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC14 (int,char*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC16 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (char*,int,char*,...) ; 
 scalar_t__ FUNC19 (char*,char*) ; 
 int FUNC20 (char*) ; 
 scalar_t__ FUNC21 (char*,char*,int) ; 
 char* FUNC22 (char*,char*) ; 

bool FUNC23(char* name, char* password, char* domainname, char* groupname, UINT timeout, UCHAR* challenge8, UCHAR* MsChapV2_ClientResponse, UCHAR* nt_pw_hash_hash)
{
	bool  auth = false;
	int   fds[2];
	FILE* out, *in;
	PID   pid;
	char  buffer[255];
	char  ntlm_timeout[32];
	char* proc_parameter[6];
	
	if (name == NULL || password == NULL || domainname == NULL || groupname == NULL)
	{
		FUNC4("Sam.c - SmbAuthenticate - wrong password parameter\n");
		return false;
	}

	if (password[0] == '\0' && (challenge8 == NULL || MsChapV2_ClientResponse == NULL || nt_pw_hash_hash == NULL))
	{
		FUNC4("Sam.c - SmbAuthenticate - wrong MsCHAPv2 parameter\n");
		return false;
	}

	FUNC11(buffer, sizeof(buffer));

	// Truncate string if unsafe char
	FUNC6(domainname, '\0');

	if (FUNC20(domainname) > 255)
	{
		// there is no domainname longer then 255 chars!
		// http://tools.ietf.org/html/rfc1035 section 2.3.4
		domainname[255] = '\0';
	}
	
	// set timeout to 15 minutes even if timeout is disabled, to prevent ntlm_auth from hung up
	if (timeout <= 0 || timeout > 900)
	{
		timeout = 999;
	}
	
	FUNC18(ntlm_timeout, sizeof(ntlm_timeout), "%is", timeout);
	FUNC4("Sam.c - timeout for ntlm_auth %s\n", ntlm_timeout);

	proc_parameter[0] = "timeout";
	proc_parameter[1] = ntlm_timeout;
	proc_parameter[2] = "ntlm_auth";
	proc_parameter[3] = "--helper-protocol=ntlm-server-1";
	proc_parameter[4] = 0;

	if (FUNC20(groupname) > 1)
	{
		// DNS Name 255 chars + OU names are limited to 64 characters +  cmdline 32 + 1
		char  requiremember[352];

		// Truncate string if unsafe char
		FUNC6(groupname, '\0');

		FUNC18(requiremember, sizeof(requiremember), "--require-membership-of=%s\\%s", domainname, groupname);
		
		proc_parameter[4] = requiremember;
		proc_parameter[5] = 0;
	}

	pid = FUNC9("timeout", proc_parameter, fds);

	if (pid < 0)
	{
		FUNC4("Sam.c - SmbCheckLogon - error fork child process (ntlm_auth)\n");
		return false;
	}

	out = FUNC14(fds[1], "w");
	if (out == 0)
	{
		FUNC1(pid, fds);

		FUNC4("Sam.c - cant open out pipe (ntlm_auth)\n");
		return false;
	}

	in = FUNC14(fds[0], "r");
	if (in == 0)
	{
		FUNC13(out);
		FUNC1(pid, fds);

		FUNC4("Sam.c - cant open in pipe (ntlm_auth)\n");
		return false;
	}

	if (FUNC12((unsigned int)FUNC20(name)) < sizeof(buffer)-1 &&
		FUNC12((unsigned int)FUNC20(password)) < sizeof(buffer)-1 &&
		FUNC12((unsigned int)FUNC20(domainname)) < sizeof(buffer)-1)
	{
		char  answer[300];

		unsigned int end = FUNC0(buffer, name, (int)FUNC20(name));
		buffer[end] = '\0';
		FUNC17("Username:: ", out);
		FUNC17(buffer, out);
		FUNC17("\n", out);
		FUNC4("Username: %s\n", buffer);
		buffer[0] = 0;

		end = FUNC0(buffer, domainname, (int)FUNC20(domainname));
		buffer[end] = '\0';
		FUNC17("NT-Domain:: ", out);
		FUNC17(buffer, out);
		FUNC17("\n", out);
		FUNC4("NT-Domain: %s\n", buffer);
		buffer[0] = 0;

		if (password[0] != '\0')
		{
			FUNC4("Password authentication\n");
			end = FUNC0(buffer, password, (int)FUNC20(password));
			buffer[end] = '\0';
			FUNC17("Password:: ", out);
			FUNC17(buffer, out);
			FUNC17("\n", out);
			FUNC4("Password: %s\n", buffer);
			buffer[0] = 0;
		}
		else
		{
			char* mschapv2_client_response;
			char* base64_challenge8;

			FUNC4("MsChapV2 authentication\n");
			mschapv2_client_response = FUNC3(MsChapV2_ClientResponse, 24);
			end = FUNC0(buffer, mschapv2_client_response, 48);
			buffer[end] = '\0';
			FUNC17("NT-Response:: ", out);
			FUNC17(buffer, out);
			FUNC17("\n", out);
			FUNC4("NT-Response:: %s\n", buffer);
			buffer[0] = 0;
			FUNC7(mschapv2_client_response);

			base64_challenge8 = FUNC3(challenge8, 8);
			end = FUNC0(buffer, base64_challenge8 , 16);
			buffer[end] = '\0';
			FUNC17("LANMAN-Challenge:: ", out);
			FUNC17(buffer, out);
			FUNC17("\n", out);
			FUNC4("LANMAN-Challenge:: %s\n", buffer);
			buffer[0] = 0;
			FUNC7(base64_challenge8);

			FUNC17("Request-User-Session-Key: Yes\n", out);
 		}

		// Start authentication
		FUNC17( ".\n", out );
		FUNC15 (out);
		// Request send!

		FUNC11(answer, sizeof(answer));

		while (FUNC16(answer, sizeof(answer)-1, in))
		{
			char* response_parameter;

			if (FUNC21(answer, ".\n", sizeof(answer)-1 ) == 0)
			{
				break;
			}

			/* Indicates a base64 encoded structure */
			response_parameter = FUNC22(answer, ":: ");
			if (!response_parameter) {
				char* newline;

				response_parameter = FUNC22(answer, ": ");

				if (!response_parameter) {
					continue;
				}

				response_parameter[0] ='\0';
				response_parameter++;
				response_parameter[0] ='\0';
				response_parameter++;

				newline  = FUNC22(response_parameter, "\n");
				if( newline )
					newline[0] = '\0';
			} else {
				response_parameter[0] ='\0';
				response_parameter++;
				response_parameter[0] ='\0';
				response_parameter++;
				response_parameter[0] ='\0';
				response_parameter++;

				end = FUNC5(response_parameter, response_parameter);
				response_parameter[end] = '\0';
			}

			if (FUNC21(answer, "Authenticated", sizeof(answer)-1 ) == 0)
			{
				if (FUNC19(response_parameter, "Yes") == 0)
				{
					FUNC4("Authenticated!\n");
					auth = true;
				}
				else if (FUNC19(response_parameter, "No") == 0)
				{
					FUNC4("Authentication failed!\n");
					auth = false;
				}
			}
			else if (FUNC21(answer, "User-Session-Key", sizeof(answer)-1 ) == 0)
			{
				if (nt_pw_hash_hash != NULL)
				{
					BUF* Buf = FUNC10(response_parameter);
					FUNC2(nt_pw_hash_hash, Buf->Buf, 16);
					FUNC8(Buf);
				}
			}
		}
	}

	FUNC13(in);
	FUNC13(out);

	FUNC1(pid, fds);

	return auth;
}
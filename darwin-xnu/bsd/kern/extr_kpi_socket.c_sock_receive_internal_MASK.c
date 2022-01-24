#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uio_t ;
typedef  int /*<<< orphan*/  uio_buf ;
typedef  int /*<<< orphan*/  u_char ;
struct sockaddr {unsigned int sa_len; } ;
struct msghdr {int msg_iovlen; int msg_flags; int msg_namelen; int msg_controllen; int /*<<< orphan*/ * msg_control; int /*<<< orphan*/ * msg_name; struct iovec* msg_iov; } ;
struct mbuf {int m_len; struct mbuf* m_next; } ;
struct iovec {int /*<<< orphan*/  iov_len; int /*<<< orphan*/  iov_base; } ;
typedef  TYPE_3__* socket_t ;
typedef  int /*<<< orphan*/  mbuf_t ;
typedef  int errno_t ;
struct TYPE_8__ {TYPE_2__* so_proto; } ;
struct TYPE_7__ {TYPE_1__* pr_usrreqs; } ;
struct TYPE_6__ {int (* pru_soreceive ) (TYPE_3__*,struct sockaddr**,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct mbuf**,int*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC1 (struct sockaddr*,int /*<<< orphan*/ ) ; 
 int FUNC2 (int,unsigned int) ; 
 int MSG_CTRUNC ; 
 int /*<<< orphan*/  M_SONAME ; 
 int /*<<< orphan*/  UIO_READ ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  UIO_SYSSPACE ; 
 int /*<<< orphan*/  caddr_t ; 
 int /*<<< orphan*/  FUNC4 (struct mbuf*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct sockaddr*,unsigned int) ; 
 struct sockaddr* FUNC6 (struct mbuf*,int /*<<< orphan*/ ) ; 
 int FUNC7 (TYPE_3__*,struct sockaddr**,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct mbuf**,int*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,size_t) ; 

errno_t
FUNC12(socket_t sock, struct msghdr *msg, mbuf_t *data,
    int flags, size_t *recvdlen)
{
	uio_t auio;
	struct mbuf *control = NULL;
	int error = 0;
	int length = 0;
	struct sockaddr	*fromsa = NULL;
	char uio_buf[ FUNC3((msg != NULL) ? msg->msg_iovlen : 0) ];

	if (sock == NULL)
		return (EINVAL);

	auio = FUNC9(((msg != NULL) ? msg->msg_iovlen : 0),
	    0, UIO_SYSSPACE, UIO_READ, &uio_buf[0], sizeof (uio_buf));
	if (msg != NULL && data == NULL) {
		int i;
		struct iovec *tempp = msg->msg_iov;

		for (i = 0; i < msg->msg_iovlen; i++) {
			FUNC8(auio,
			    FUNC0((tempp + i)->iov_base),
			    (tempp + i)->iov_len);
		}
		if (FUNC10(auio) < 0)
			return (EINVAL);
	} else if (recvdlen != NULL) {
		FUNC11(auio, (FUNC10(auio) + *recvdlen));
	}
	length = FUNC10(auio);

	if (recvdlen != NULL)
		*recvdlen = 0;

	/* let pru_soreceive handle the socket locking */
	error = sock->so_proto->pr_usrreqs->pru_soreceive(sock, &fromsa, auio,
	    data, (msg && msg->msg_control) ? &control : NULL, &flags);
	if (error != 0)
		goto cleanup;

	if (recvdlen != NULL)
		*recvdlen = length - FUNC10(auio);
	if (msg != NULL) {
		msg->msg_flags = flags;

		if (msg->msg_name != NULL) {
			int salen;
			salen = msg->msg_namelen;
			if (msg->msg_namelen > 0 && fromsa != NULL) {
				salen = FUNC2(salen, fromsa->sa_len);
				FUNC5(msg->msg_name, fromsa,
				    msg->msg_namelen > fromsa->sa_len ?
				    fromsa->sa_len : msg->msg_namelen);
			}
		}

		if (msg->msg_control != NULL) {
			struct mbuf *m = control;
			u_char *ctlbuf = msg->msg_control;
			int clen = msg->msg_controllen;

			msg->msg_controllen = 0;

			while (m != NULL && clen > 0) {
				unsigned int tocopy;

				if (clen >= m->m_len) {
					tocopy = m->m_len;
				} else {
					msg->msg_flags |= MSG_CTRUNC;
					tocopy = clen;
				}
				FUNC5(ctlbuf, FUNC6(m, caddr_t), tocopy);
				ctlbuf += tocopy;
				clen -= tocopy;
				m = m->m_next;
			}
			msg->msg_controllen =
			    (uintptr_t)ctlbuf - (uintptr_t)msg->msg_control;
		}
	}

cleanup:
	if (control != NULL)
		FUNC4(control);
	if (fromsa != NULL)
		FUNC1(fromsa, M_SONAME);
	return (error);
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct wpabuf_trace {scalar_t__ magic; struct wpabuf_trace* ext_data; } ;
struct wpabuf {scalar_t__ magic; struct wpabuf* ext_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_ERROR ; 
 scalar_t__ WPABUF_MAGIC ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct wpabuf_trace*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 struct wpabuf_trace* FUNC3 (struct wpabuf_trace*) ; 

void FUNC4(struct wpabuf *buf)
{
#ifdef WPA_TRACE
	struct wpabuf_trace *trace;
	if (buf == NULL)
		return;
	trace = wpabuf_get_trace(buf);
	if (trace->magic != WPABUF_MAGIC) {
		wpa_printf( MSG_ERROR,  "wpabuf_free: invalid magic %x",
			   trace->magic);
		abort();
	}
	os_free(buf->ext_data);
	os_free(trace);
#else /* WPA_TRACE */
	if (buf == NULL)
		return;
	FUNC1(buf->ext_data);
	FUNC1(buf);
#endif /* WPA_TRACE */
}
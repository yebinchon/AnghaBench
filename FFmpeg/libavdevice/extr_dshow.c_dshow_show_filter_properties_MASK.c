#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ pElems; int /*<<< orphan*/  cElems; int /*<<< orphan*/  member_0; } ;
struct TYPE_5__ {scalar_t__ pGraph; int /*<<< orphan*/  achName; int /*<<< orphan*/  member_0; } ;
typedef  int /*<<< orphan*/  IUnknown ;
typedef  int /*<<< orphan*/  ISpecifyPropertyPages ;
typedef  int /*<<< orphan*/  IBaseFilter ;
typedef  scalar_t__ HRESULT ;
typedef  TYPE_1__ FILTER_INFO ;
typedef  TYPE_2__ CAUUID ;
typedef  int /*<<< orphan*/  AVFormatContext ;

/* Variables and functions */
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  AV_LOG_WARNING ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  IID_ISpecifyPropertyPages ; 
 int /*<<< orphan*/  IID_IUnknown ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ **,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 

void
FUNC9(IBaseFilter *device_filter, AVFormatContext *avctx) {
    ISpecifyPropertyPages *property_pages = NULL;
    IUnknown *device_filter_iunknown = NULL;
    HRESULT hr;
    FILTER_INFO filter_info = {0}; /* a warning on this line is false positive GCC bug 53119 AFAICT */
    CAUUID ca_guid = {0};

    hr  = FUNC2(device_filter, &IID_ISpecifyPropertyPages, (void **)&property_pages);
    if (hr != S_OK) {
        FUNC8(avctx, AV_LOG_WARNING, "requested filter does not have a property page to show");
        goto end;
    }
    hr = FUNC1(device_filter, &filter_info);
    if (hr != S_OK) {
        goto fail;
    }
    hr = FUNC2(device_filter, &IID_IUnknown, (void **)&device_filter_iunknown);
    if (hr != S_OK) {
        goto fail;
    }
    hr = FUNC4(property_pages, &ca_guid);
    if (hr != S_OK) {
        goto fail;
    }
    hr = FUNC7(NULL, 0, 0, filter_info.achName, 1, &device_filter_iunknown, ca_guid.cElems,
        ca_guid.pElems, 0, 0, NULL);
    if (hr != S_OK) {
        goto fail;
    }
    goto end;
fail:
    FUNC8(avctx, AV_LOG_ERROR, "Failure showing property pages for filter");
end:
    if (property_pages)
        FUNC5(property_pages);
    if (device_filter_iunknown)
        FUNC6(device_filter_iunknown);
    if (filter_info.pGraph)
        FUNC3(filter_info.pGraph);
    if (ca_guid.pElems)
        FUNC0(ca_guid.pElems);
}
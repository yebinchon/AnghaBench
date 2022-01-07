
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ pElems; int cElems; int member_0; } ;
struct TYPE_5__ {scalar_t__ pGraph; int achName; int member_0; } ;
typedef int IUnknown ;
typedef int ISpecifyPropertyPages ;
typedef int IBaseFilter ;
typedef scalar_t__ HRESULT ;
typedef TYPE_1__ FILTER_INFO ;
typedef TYPE_2__ CAUUID ;
typedef int AVFormatContext ;


 int AV_LOG_ERROR ;
 int AV_LOG_WARNING ;
 int CoTaskMemFree (scalar_t__) ;
 scalar_t__ IBaseFilter_QueryFilterInfo (int *,TYPE_1__*) ;
 scalar_t__ IBaseFilter_QueryInterface (int *,int *,void**) ;
 int IFilterGraph_Release (scalar_t__) ;
 int IID_ISpecifyPropertyPages ;
 int IID_IUnknown ;
 scalar_t__ ISpecifyPropertyPages_GetPages (int *,TYPE_2__*) ;
 int ISpecifyPropertyPages_Release (int *) ;
 int IUnknown_Release (int *) ;
 scalar_t__ OleCreatePropertyFrame (int *,int ,int ,int ,int,int **,int ,scalar_t__,int ,int ,int *) ;
 scalar_t__ S_OK ;
 int av_log (int *,int ,char*) ;

void
dshow_show_filter_properties(IBaseFilter *device_filter, AVFormatContext *avctx) {
    ISpecifyPropertyPages *property_pages = ((void*)0);
    IUnknown *device_filter_iunknown = ((void*)0);
    HRESULT hr;
    FILTER_INFO filter_info = {0};
    CAUUID ca_guid = {0};

    hr = IBaseFilter_QueryInterface(device_filter, &IID_ISpecifyPropertyPages, (void **)&property_pages);
    if (hr != S_OK) {
        av_log(avctx, AV_LOG_WARNING, "requested filter does not have a property page to show");
        goto end;
    }
    hr = IBaseFilter_QueryFilterInfo(device_filter, &filter_info);
    if (hr != S_OK) {
        goto fail;
    }
    hr = IBaseFilter_QueryInterface(device_filter, &IID_IUnknown, (void **)&device_filter_iunknown);
    if (hr != S_OK) {
        goto fail;
    }
    hr = ISpecifyPropertyPages_GetPages(property_pages, &ca_guid);
    if (hr != S_OK) {
        goto fail;
    }
    hr = OleCreatePropertyFrame(((void*)0), 0, 0, filter_info.achName, 1, &device_filter_iunknown, ca_guid.cElems,
        ca_guid.pElems, 0, 0, ((void*)0));
    if (hr != S_OK) {
        goto fail;
    }
    goto end;
fail:
    av_log(avctx, AV_LOG_ERROR, "Failure showing property pages for filter");
end:
    if (property_pages)
        ISpecifyPropertyPages_Release(property_pages);
    if (device_filter_iunknown)
        IUnknown_Release(device_filter_iunknown);
    if (filter_info.pGraph)
        IFilterGraph_Release(filter_info.pGraph);
    if (ca_guid.pElems)
        CoTaskMemFree(ca_guid.pElems);
}

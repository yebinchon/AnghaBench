; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/bta/hf_client/extr_bta_hf_client_act.c_bta_hf_client_deregister.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/bta/hf_client/extr_bta_hf_client_act.c_bta_hf_client_deregister.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@TRUE = common dso_local global i32 0, align 4
@bta_hf_client_cb = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@BTM_COD_SERVICE_AUDIO = common dso_local global i32 0, align 4
@BTA_UTL_CLR_COD_SERVICE_CLASS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bta_hf_client_deregister(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_6__, align 4
  store i32* %0, i32** %2, align 8
  %4 = load i32, i32* @TRUE, align 4
  store i32 %4, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @bta_hf_client_cb, i32 0, i32 0, i32 0), align 4
  %5 = load i32, i32* @BTM_COD_SERVICE_AUDIO, align 4
  %6 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 0
  store i32 %5, i32* %6, align 4
  %7 = load i32, i32* @BTA_UTL_CLR_COD_SERVICE_CLASS, align 4
  %8 = call i32 @utl_set_device_class(%struct.TYPE_6__* %3, i32 %7)
  %9 = load i32*, i32** %2, align 8
  %10 = call i32 @bta_hf_client_del_record(i32* %9)
  %11 = call i32 (...) @bta_hf_client_close_server()
  %12 = call i32 (...) @bta_hf_client_scb_disable()
  ret void
}

declare dso_local i32 @utl_set_device_class(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @bta_hf_client_del_record(i32*) #1

declare dso_local i32 @bta_hf_client_close_server(...) #1

declare dso_local i32 @bta_hf_client_scb_disable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

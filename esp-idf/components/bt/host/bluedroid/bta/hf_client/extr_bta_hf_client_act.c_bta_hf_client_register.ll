; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/bta/hf_client/extr_bta_hf_client_act.c_bta_hf_client_register.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/bta/hf_client/extr_bta_hf_client_act.c_bta_hf_client_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 (i32, %struct.TYPE_16__*)*, %struct.TYPE_13__ }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_17__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_15__ = type { i32, i32, i32 }

@bta_hf_client_cb = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@BTM_COD_SERVICE_AUDIO = common dso_local global i32 0, align 4
@BTM_COD_MAJOR_AUDIO = common dso_local global i32 0, align 4
@BTM_COD_MINOR_CONFM_HANDSFREE = common dso_local global i32 0, align 4
@BTA_UTL_SET_COD_ALL = common dso_local global i32 0, align 4
@BTA_HF_CLIENT_SUCCESS = common dso_local global i32 0, align 4
@BTA_HF_CLIENT_REGISTER_EVT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bta_hf_client_register(%struct.TYPE_17__* %0) #0 {
  %2 = alloca %struct.TYPE_17__*, align 8
  %3 = alloca %struct.TYPE_16__, align 4
  %4 = alloca %struct.TYPE_15__, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %2, align 8
  %5 = call i32 @memset(%struct.TYPE_16__* %3, i32 0, i32 4)
  %6 = call i32 (...) @bta_hf_client_scb_init()
  %7 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @bta_hf_client_cb, i32 0, i32 1, i32 1), align 4
  %11 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @bta_hf_client_cb, i32 0, i32 1, i32 0), align 8
  %15 = call i32 (...) @bta_hf_client_at_init()
  %16 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %17 = call i32 @bta_hf_client_create_record(%struct.TYPE_17__* %16)
  %18 = load i32, i32* @BTM_COD_SERVICE_AUDIO, align 4
  %19 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %4, i32 0, i32 2
  store i32 %18, i32* %19, align 4
  %20 = load i32, i32* @BTM_COD_MAJOR_AUDIO, align 4
  %21 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %4, i32 0, i32 1
  store i32 %20, i32* %21, align 4
  %22 = load i32, i32* @BTM_COD_MINOR_CONFM_HANDSFREE, align 4
  %23 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %4, i32 0, i32 0
  store i32 %22, i32* %23, align 4
  %24 = load i32, i32* @BTA_UTL_SET_COD_ALL, align 4
  %25 = call i32 @utl_set_device_class(%struct.TYPE_15__* %4, i32 %24)
  %26 = call i32 (...) @bta_hf_client_start_server()
  %27 = load i32, i32* @BTA_HF_CLIENT_SUCCESS, align 4
  %28 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %3, i32 0, i32 0
  store i32 %27, i32* %28, align 4
  %29 = load i32 (i32, %struct.TYPE_16__*)*, i32 (i32, %struct.TYPE_16__*)** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @bta_hf_client_cb, i32 0, i32 0), align 8
  %30 = load i32, i32* @BTA_HF_CLIENT_REGISTER_EVT, align 4
  %31 = call i32 %29(i32 %30, %struct.TYPE_16__* %3)
  ret void
}

declare dso_local i32 @memset(%struct.TYPE_16__*, i32, i32) #1

declare dso_local i32 @bta_hf_client_scb_init(...) #1

declare dso_local i32 @bta_hf_client_at_init(...) #1

declare dso_local i32 @bta_hf_client_create_record(%struct.TYPE_17__*) #1

declare dso_local i32 @utl_set_device_class(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @bta_hf_client_start_server(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

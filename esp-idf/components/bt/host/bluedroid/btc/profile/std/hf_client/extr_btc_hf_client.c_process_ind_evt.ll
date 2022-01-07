; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/btc/profile/std/hf_client/extr_btc_hf_client.c_process_ind_evt.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/btc/profile/std/hf_client/extr_btc_hf_client.c_process_ind_evt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32, i32 }
%struct.TYPE_21__ = type { %struct.TYPE_19__, %struct.TYPE_18__, %struct.TYPE_17__, %struct.TYPE_16__, %struct.TYPE_15__, %struct.TYPE_14__, %struct.TYPE_13__ }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i32 }

@ESP_HF_CLIENT_CIND_CALL_EVT = common dso_local global i32 0, align 4
@ESP_HF_CLIENT_CIND_CALL_SETUP_EVT = common dso_local global i32 0, align 4
@ESP_HF_CLIENT_CIND_CALL_HELD_EVT = common dso_local global i32 0, align 4
@ESP_HF_CLIENT_CIND_SERVICE_AVAILABILITY_EVT = common dso_local global i32 0, align 4
@ESP_HF_CLIENT_CIND_SIGNAL_STRENGTH_EVT = common dso_local global i32 0, align 4
@ESP_HF_CLIENT_CIND_ROAMING_STATUS_EVT = common dso_local global i32 0, align 4
@ESP_HF_CLIENT_CIND_BATTERY_LEVEL_EVT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_20__*)* @process_ind_evt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_ind_evt(%struct.TYPE_20__* %0) #0 {
  %2 = alloca %struct.TYPE_20__*, align 8
  %3 = alloca %struct.TYPE_21__, align 4
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %2, align 8
  %4 = call i32 @memset(%struct.TYPE_21__* %3, i32 0, i32 28)
  %5 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  switch i32 %7, label %64 [
    i32 133, label %8
    i32 131, label %16
    i32 132, label %24
    i32 129, label %32
    i32 128, label %40
    i32 130, label %48
    i32 134, label %56
  ]

8:                                                ; preds = %1
  %9 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %3, i32 0, i32 6
  %13 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 4
  %14 = load i32, i32* @ESP_HF_CLIENT_CIND_CALL_EVT, align 4
  %15 = call i32 @btc_hf_client_cb_to_app(i32 %14, %struct.TYPE_21__* %3)
  br label %65

16:                                               ; preds = %1
  %17 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %3, i32 0, i32 5
  %21 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 4
  %22 = load i32, i32* @ESP_HF_CLIENT_CIND_CALL_SETUP_EVT, align 4
  %23 = call i32 @btc_hf_client_cb_to_app(i32 %22, %struct.TYPE_21__* %3)
  br label %65

24:                                               ; preds = %1
  %25 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %3, i32 0, i32 4
  %29 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  %30 = load i32, i32* @ESP_HF_CLIENT_CIND_CALL_HELD_EVT, align 4
  %31 = call i32 @btc_hf_client_cb_to_app(i32 %30, %struct.TYPE_21__* %3)
  br label %65

32:                                               ; preds = %1
  %33 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %3, i32 0, i32 3
  %37 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 4
  %38 = load i32, i32* @ESP_HF_CLIENT_CIND_SERVICE_AVAILABILITY_EVT, align 4
  %39 = call i32 @btc_hf_client_cb_to_app(i32 %38, %struct.TYPE_21__* %3)
  br label %65

40:                                               ; preds = %1
  %41 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %42 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %3, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 4
  %46 = load i32, i32* @ESP_HF_CLIENT_CIND_SIGNAL_STRENGTH_EVT, align 4
  %47 = call i32 @btc_hf_client_cb_to_app(i32 %46, %struct.TYPE_21__* %3)
  br label %65

48:                                               ; preds = %1
  %49 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %50 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %3, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 4
  %54 = load i32, i32* @ESP_HF_CLIENT_CIND_ROAMING_STATUS_EVT, align 4
  %55 = call i32 @btc_hf_client_cb_to_app(i32 %54, %struct.TYPE_21__* %3)
  br label %65

56:                                               ; preds = %1
  %57 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %58 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %3, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 4
  %62 = load i32, i32* @ESP_HF_CLIENT_CIND_BATTERY_LEVEL_EVT, align 4
  %63 = call i32 @btc_hf_client_cb_to_app(i32 %62, %struct.TYPE_21__* %3)
  br label %65

64:                                               ; preds = %1
  br label %65

65:                                               ; preds = %64, %56, %48, %40, %32, %24, %16, %8
  ret void
}

declare dso_local i32 @memset(%struct.TYPE_21__*, i32, i32) #1

declare dso_local i32 @btc_hf_client_cb_to_app(i32, %struct.TYPE_21__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

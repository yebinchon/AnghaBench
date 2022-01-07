; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_inq.c_btm_read_linq_tx_power_complete.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_inq.c_btm_read_linq_tx_power_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 (%struct.TYPE_7__*)*, i32 }
%struct.TYPE_7__ = type { i64, i64, i32 }

@btm_cb = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@HCI_SUCCESS = common dso_local global i64 0, align 8
@BTM_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"BTM INQ TX POWER Complete: tx_power %d, hci status 0x%02x\0A\00", align 1
@BTM_ERR_PROCESSING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @btm_read_linq_tx_power_complete(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32 (%struct.TYPE_7__*)**, align 8
  %4 = alloca %struct.TYPE_7__, align 8
  store i32* %0, i32** %2, align 8
  %5 = load i32 (%struct.TYPE_7__*)*, i32 (%struct.TYPE_7__*)** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @btm_cb, i32 0, i32 0, i32 0), align 8
  %6 = bitcast i32 (%struct.TYPE_7__*)* %5 to i32 (%struct.TYPE_7__*)**
  store i32 (%struct.TYPE_7__*)** %6, i32 (%struct.TYPE_7__*)*** %3, align 8
  %7 = call i32 @btu_stop_timer(i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @btm_cb, i32 0, i32 0, i32 1))
  store i32 (%struct.TYPE_7__*)* null, i32 (%struct.TYPE_7__*)** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @btm_cb, i32 0, i32 0, i32 0), align 8
  %8 = load i32 (%struct.TYPE_7__*)**, i32 (%struct.TYPE_7__*)*** %3, align 8
  %9 = icmp ne i32 (%struct.TYPE_7__*)** %8, null
  br i1 %9, label %10, label %38

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i32*, i32** %2, align 8
  %14 = call i32 @STREAM_TO_UINT8(i64 %12, i32* %13)
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @HCI_SUCCESS, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %31

19:                                               ; preds = %10
  %20 = load i32, i32* @BTM_SUCCESS, align 4
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 2
  store i32 %20, i32* %21, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load i32*, i32** %2, align 8
  %25 = call i32 @STREAM_TO_UINT8(i64 %23, i32* %24)
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @BTM_TRACE_EVENT(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i64 %27, i64 %29)
  br label %34

31:                                               ; preds = %10
  %32 = load i32, i32* @BTM_ERR_PROCESSING, align 4
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 2
  store i32 %32, i32* %33, align 8
  br label %34

34:                                               ; preds = %31, %19
  %35 = load i32 (%struct.TYPE_7__*)**, i32 (%struct.TYPE_7__*)*** %3, align 8
  %36 = load i32 (%struct.TYPE_7__*)*, i32 (%struct.TYPE_7__*)** %35, align 8
  %37 = call i32 %36(%struct.TYPE_7__* %4)
  br label %38

38:                                               ; preds = %34, %1
  ret void
}

declare dso_local i32 @btu_stop_timer(i32*) #1

declare dso_local i32 @STREAM_TO_UINT8(i64, i32*) #1

declare dso_local i32 @BTM_TRACE_EVENT(i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

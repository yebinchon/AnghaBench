; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/btc/profile/std/hf_ag/extr_btc_hf_ag.c_connect_init.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/btc/profile/std/hf_ag/extr_btc_hf_ag.c_connect_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__, i32, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_10__ = type { i32 }

@btc_max_hf_clients = common dso_local global i32 0, align 4
@BT_STATUS_BUSY = common dso_local global i32 0, align 4
@ESP_HF_CONNECTION_STATE_CONNECTING = common dso_local global i32 0, align 4
@hf_local_param = common dso_local global %struct.TYPE_11__* null, align 8
@BTC_HF_SECURITY = common dso_local global i32 0, align 4
@BTC_HF_SERVICES = common dso_local global i32 0, align 4
@BT_STATUS_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, i32)* @connect_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @connect_init(%struct.TYPE_10__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %8 = call i32 @btc_hf_idx_by_bdaddr(%struct.TYPE_10__* %7)
  store i32 %8, i32* %6, align 4
  %9 = call i32 (...) @CHECK_HF_INIT()
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* @btc_max_hf_clients, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* @BT_STATUS_BUSY, align 4
  store i32 %14, i32* %3, align 4
  br label %60

15:                                               ; preds = %2
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %17 = call i32 @is_connected(%struct.TYPE_10__* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %58, label %19

19:                                               ; preds = %15
  %20 = load i32, i32* @ESP_HF_CONNECTION_STATE_CONNECTING, align 4
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** @hf_local_param, align 8
  %22 = load i32, i32* %6, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 2
  store i32 %20, i32* %26, align 4
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** @hf_local_param, align 8
  %28 = load i32, i32* %6, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @bdcpy(i32 %34, i32 %37)
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** @hf_local_param, align 8
  %40 = load i32, i32* %6, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** @hf_local_param, align 8
  %47 = load i32, i32* %6, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @BTC_HF_SECURITY, align 4
  %55 = load i32, i32* @BTC_HF_SERVICES, align 4
  %56 = call i32 @BTA_AgOpen(i32 %45, i32 %53, i32 %54, i32 %55)
  %57 = load i32, i32* @BT_STATUS_SUCCESS, align 4
  store i32 %57, i32* %3, align 4
  br label %60

58:                                               ; preds = %15
  %59 = load i32, i32* @BT_STATUS_BUSY, align 4
  store i32 %59, i32* %3, align 4
  br label %60

60:                                               ; preds = %58, %19, %13
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local i32 @btc_hf_idx_by_bdaddr(%struct.TYPE_10__*) #1

declare dso_local i32 @CHECK_HF_INIT(...) #1

declare dso_local i32 @is_connected(%struct.TYPE_10__*) #1

declare dso_local i32 @bdcpy(i32, i32) #1

declare dso_local i32 @BTA_AgOpen(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

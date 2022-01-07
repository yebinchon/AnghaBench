; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/btc/profile/std/hf_client/extr_btc_hf_client.c_is_connected.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/btc/profile/std/hf_client/extr_btc_hf_client.c_is_connected.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_8__ = type { i32 }

@hf_client_local_param = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@ESP_HF_CLIENT_CONNECTION_STATE_CONNECTED = common dso_local global i64 0, align 8
@ESP_HF_CLIENT_CONNECTION_STATE_SLC_CONNECTED = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*)* @is_connected to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_connected(%struct.TYPE_8__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  %4 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @hf_client_local_param, i32 0, i32 0, i32 0), align 8
  %5 = load i64, i64* @ESP_HF_CLIENT_CONNECTION_STATE_CONNECTED, align 8
  %6 = icmp eq i64 %4, %5
  br i1 %6, label %11, label %7

7:                                                ; preds = %1
  %8 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @hf_client_local_param, i32 0, i32 0, i32 0), align 8
  %9 = load i64, i64* @ESP_HF_CLIENT_CONNECTION_STATE_SLC_CONNECTED, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %23

11:                                               ; preds = %7, %1
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %13 = icmp eq %struct.TYPE_8__* %12, null
  br i1 %13, label %21, label %14

14:                                               ; preds = %11
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @hf_client_local_param, i32 0, i32 0, i32 1, i32 0), align 8
  %19 = call i64 @bdcmp(i32 %17, i32 %18)
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %14, %11
  %22 = load i32, i32* @TRUE, align 4
  store i32 %22, i32* %2, align 4
  br label %25

23:                                               ; preds = %14, %7
  %24 = load i32, i32* @FALSE, align 4
  store i32 %24, i32* %2, align 4
  br label %25

25:                                               ; preds = %23, %21
  %26 = load i32, i32* %2, align 4
  ret i32 %26
}

declare dso_local i64 @bdcmp(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/esp-idf/components/protocomm/src/transports/extr_protocomm_nimble.c_simple_ble_gap_event.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/protocomm/src/transports/extr_protocomm_nimble.c_simple_ble_gap_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ble_gap_event = type { i32, %struct.TYPE_5__, %struct.TYPE_4__, %struct.TYPE_6__ }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.ble_gap_conn_desc = type { i32 }

@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"No open connection with the specified handle\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"disconnect; reason=%d \00", align 1
@.str.2 = private unnamed_addr constant [48 x i8] c"mtu update event; conn_handle=%d cid=%d mtu=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ble_gap_event*, i8*)* @simple_ble_gap_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @simple_ble_gap_event(%struct.ble_gap_event* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ble_gap_event*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.ble_gap_conn_desc, align 4
  %7 = alloca i32, align 4
  store %struct.ble_gap_event* %0, %struct.ble_gap_event** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load %struct.ble_gap_event*, %struct.ble_gap_event** %4, align 8
  %9 = getelementptr inbounds %struct.ble_gap_event, %struct.ble_gap_event* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %67 [
    i32 130, label %11
    i32 129, label %36
    i32 131, label %47
    i32 128, label %49
  ]

11:                                               ; preds = %2
  %12 = load %struct.ble_gap_event*, %struct.ble_gap_event** %4, align 8
  %13 = getelementptr inbounds %struct.ble_gap_event, %struct.ble_gap_event* %12, i32 0, i32 3
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %33

17:                                               ; preds = %11
  %18 = load %struct.ble_gap_event*, %struct.ble_gap_event** %4, align 8
  %19 = load i8*, i8** %5, align 8
  %20 = call i32 @transport_simple_ble_connect(%struct.ble_gap_event* %18, i8* %19)
  %21 = load %struct.ble_gap_event*, %struct.ble_gap_event** %4, align 8
  %22 = getelementptr inbounds %struct.ble_gap_event, %struct.ble_gap_event* %21, i32 0, i32 3
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @ble_gap_conn_find(i32 %24, %struct.ble_gap_conn_desc* %6)
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %17
  %29 = load i32, i32* @TAG, align 4
  %30 = call i32 @ESP_LOGE(i32 %29, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %31 = load i32, i32* %7, align 4
  store i32 %31, i32* %3, align 4
  br label %68

32:                                               ; preds = %17
  br label %35

33:                                               ; preds = %11
  %34 = call i32 (...) @simple_ble_advertise()
  br label %35

35:                                               ; preds = %33, %32
  store i32 0, i32* %3, align 4
  br label %68

36:                                               ; preds = %2
  %37 = load i32, i32* @TAG, align 4
  %38 = load %struct.ble_gap_event*, %struct.ble_gap_event** %4, align 8
  %39 = getelementptr inbounds %struct.ble_gap_event, %struct.ble_gap_event* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @ESP_LOGD(i32 %37, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %41)
  %43 = load %struct.ble_gap_event*, %struct.ble_gap_event** %4, align 8
  %44 = load i8*, i8** %5, align 8
  %45 = call i32 @transport_simple_ble_disconnect(%struct.ble_gap_event* %43, i8* %44)
  %46 = call i32 (...) @simple_ble_advertise()
  store i32 0, i32* %3, align 4
  br label %68

47:                                               ; preds = %2
  %48 = call i32 (...) @simple_ble_advertise()
  store i32 0, i32* %3, align 4
  br label %68

49:                                               ; preds = %2
  %50 = load i32, i32* @TAG, align 4
  %51 = load %struct.ble_gap_event*, %struct.ble_gap_event** %4, align 8
  %52 = getelementptr inbounds %struct.ble_gap_event, %struct.ble_gap_event* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.ble_gap_event*, %struct.ble_gap_event** %4, align 8
  %56 = getelementptr inbounds %struct.ble_gap_event, %struct.ble_gap_event* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.ble_gap_event*, %struct.ble_gap_event** %4, align 8
  %60 = getelementptr inbounds %struct.ble_gap_event, %struct.ble_gap_event* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @ESP_LOGI(i32 %50, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i32 %54, i32 %58, i32 %62)
  %64 = load %struct.ble_gap_event*, %struct.ble_gap_event** %4, align 8
  %65 = load i8*, i8** %5, align 8
  %66 = call i32 @transport_simple_ble_set_mtu(%struct.ble_gap_event* %64, i8* %65)
  store i32 0, i32* %3, align 4
  br label %68

67:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %68

68:                                               ; preds = %67, %49, %47, %36, %35, %28
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local i32 @transport_simple_ble_connect(%struct.ble_gap_event*, i8*) #1

declare dso_local i32 @ble_gap_conn_find(i32, %struct.ble_gap_conn_desc*) #1

declare dso_local i32 @ESP_LOGE(i32, i8*) #1

declare dso_local i32 @simple_ble_advertise(...) #1

declare dso_local i32 @ESP_LOGD(i32, i8*, i32) #1

declare dso_local i32 @transport_simple_ble_disconnect(%struct.ble_gap_event*, i8*) #1

declare dso_local i32 @ESP_LOGI(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @transport_simple_ble_set_mtu(%struct.ble_gap_event*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

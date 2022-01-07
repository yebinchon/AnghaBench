; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/bluetooth/nimble/blehr/main/extr_main.c_blehr_gap_event.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/bluetooth/nimble/blehr/main/extr_main.c_blehr_gap_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ble_gap_event = type { i32, %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { i8*, i32 }
%struct.TYPE_7__ = type { i8*, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32 }

@INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"connection %s; status=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"established\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"failed\00", align 1
@conn_handle = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"disconnect; reason=%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"adv complete\0A\00", align 1
@.str.5 = private unnamed_addr constant [61 x i8] c"subscribe event; cur_notify=%d\0A value handle; val_handle=%d\0A\00", align 1
@hrs_hrm_handle = common dso_local global i32 0, align 4
@notify_state = common dso_local global i8* null, align 8
@.str.6 = private unnamed_addr constant [24 x i8] c"BLE_GAP_SUBSCRIBE_EVENT\00", align 1
@.str.7 = private unnamed_addr constant [30 x i8] c"conn_handle from subscribe=%d\00", align 1
@.str.8 = private unnamed_addr constant [41 x i8] c"mtu update event; conn_handle=%d mtu=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ble_gap_event*, i8*)* @blehr_gap_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @blehr_gap_event(%struct.ble_gap_event* %0, i8* %1) #0 {
  %3 = alloca %struct.ble_gap_event*, align 8
  %4 = alloca i8*, align 8
  store %struct.ble_gap_event* %0, %struct.ble_gap_event** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load %struct.ble_gap_event*, %struct.ble_gap_event** %3, align 8
  %6 = getelementptr inbounds %struct.ble_gap_event, %struct.ble_gap_event* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  switch i32 %7, label %94 [
    i32 131, label %8
    i32 130, label %34
    i32 132, label %42
    i32 128, label %46
    i32 129, label %83
  ]

8:                                                ; preds = %2
  %9 = load i32, i32* @INFO, align 4
  %10 = load %struct.ble_gap_event*, %struct.ble_gap_event** %3, align 8
  %11 = getelementptr inbounds %struct.ble_gap_event, %struct.ble_gap_event* %10, i32 0, i32 4
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = icmp eq i32 %13, 0
  %15 = zext i1 %14 to i64
  %16 = select i1 %14, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0)
  %17 = load %struct.ble_gap_event*, %struct.ble_gap_event** %3, align 8
  %18 = getelementptr inbounds %struct.ble_gap_event, %struct.ble_gap_event* %17, i32 0, i32 4
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 (i32, i8*, ...) @MODLOG_DFLT(i32 %9, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8* %16, i32 %20)
  %22 = load %struct.ble_gap_event*, %struct.ble_gap_event** %3, align 8
  %23 = getelementptr inbounds %struct.ble_gap_event, %struct.ble_gap_event* %22, i32 0, i32 4
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %8
  %28 = call i32 (...) @blehr_advertise()
  br label %29

29:                                               ; preds = %27, %8
  %30 = load %struct.ble_gap_event*, %struct.ble_gap_event** %3, align 8
  %31 = getelementptr inbounds %struct.ble_gap_event, %struct.ble_gap_event* %30, i32 0, i32 4
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* @conn_handle, align 4
  br label %94

34:                                               ; preds = %2
  %35 = load i32, i32* @INFO, align 4
  %36 = load %struct.ble_gap_event*, %struct.ble_gap_event** %3, align 8
  %37 = getelementptr inbounds %struct.ble_gap_event, %struct.ble_gap_event* %36, i32 0, i32 3
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 (i32, i8*, ...) @MODLOG_DFLT(i32 %35, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 %39)
  %41 = call i32 (...) @blehr_advertise()
  br label %94

42:                                               ; preds = %2
  %43 = load i32, i32* @INFO, align 4
  %44 = call i32 (i32, i8*, ...) @MODLOG_DFLT(i32 %43, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  %45 = call i32 (...) @blehr_advertise()
  br label %94

46:                                               ; preds = %2
  %47 = load i32, i32* @INFO, align 4
  %48 = load %struct.ble_gap_event*, %struct.ble_gap_event** %3, align 8
  %49 = getelementptr inbounds %struct.ble_gap_event, %struct.ble_gap_event* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = load i8*, i8** %50, align 8
  %52 = load i32, i32* @hrs_hrm_handle, align 4
  %53 = call i32 (i32, i8*, ...) @MODLOG_DFLT(i32 %47, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.5, i64 0, i64 0), i8* %51, i32 %52)
  %54 = load %struct.ble_gap_event*, %struct.ble_gap_event** %3, align 8
  %55 = getelementptr inbounds %struct.ble_gap_event, %struct.ble_gap_event* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @hrs_hrm_handle, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %66

60:                                               ; preds = %46
  %61 = load %struct.ble_gap_event*, %struct.ble_gap_event** %3, align 8
  %62 = getelementptr inbounds %struct.ble_gap_event, %struct.ble_gap_event* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 0
  %64 = load i8*, i8** %63, align 8
  store i8* %64, i8** @notify_state, align 8
  %65 = call i32 (...) @blehr_tx_hrate_reset()
  br label %80

66:                                               ; preds = %46
  %67 = load %struct.ble_gap_event*, %struct.ble_gap_event** %3, align 8
  %68 = getelementptr inbounds %struct.ble_gap_event, %struct.ble_gap_event* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @hrs_hrm_handle, align 4
  %72 = icmp ne i32 %70, %71
  br i1 %72, label %73, label %79

73:                                               ; preds = %66
  %74 = load %struct.ble_gap_event*, %struct.ble_gap_event** %3, align 8
  %75 = getelementptr inbounds %struct.ble_gap_event, %struct.ble_gap_event* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 0
  %77 = load i8*, i8** %76, align 8
  store i8* %77, i8** @notify_state, align 8
  %78 = call i32 (...) @blehr_tx_hrate_stop()
  br label %79

79:                                               ; preds = %73, %66
  br label %80

80:                                               ; preds = %79, %60
  %81 = load i32, i32* @conn_handle, align 4
  %82 = call i32 @ESP_LOGI(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0), i32 %81)
  br label %94

83:                                               ; preds = %2
  %84 = load i32, i32* @INFO, align 4
  %85 = load %struct.ble_gap_event*, %struct.ble_gap_event** %3, align 8
  %86 = getelementptr inbounds %struct.ble_gap_event, %struct.ble_gap_event* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 0
  %88 = load i8*, i8** %87, align 8
  %89 = load %struct.ble_gap_event*, %struct.ble_gap_event** %3, align 8
  %90 = getelementptr inbounds %struct.ble_gap_event, %struct.ble_gap_event* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = call i32 (i32, i8*, ...) @MODLOG_DFLT(i32 %84, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.8, i64 0, i64 0), i8* %88, i32 %92)
  br label %94

94:                                               ; preds = %2, %83, %80, %42, %34, %29
  ret i32 0
}

declare dso_local i32 @MODLOG_DFLT(i32, i8*, ...) #1

declare dso_local i32 @blehr_advertise(...) #1

declare dso_local i32 @blehr_tx_hrate_reset(...) #1

declare dso_local i32 @blehr_tx_hrate_stop(...) #1

declare dso_local i32 @ESP_LOGI(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/esp-idf/components/protocomm/src/transports/extr_protocomm_ble.c_transport_simple_ble_disconnect.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/protocomm/src/transports/extr_protocomm_ble.c_transport_simple_ble_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64 (i32, i32)* }
%struct.TYPE_10__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Inside disconnect w/ session - %d\00", align 1
@protoble_internal = common dso_local global %struct.TYPE_11__* null, align 8
@ESP_OK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [43 x i8] c"error closing the session after disconnect\00", align 1
@ESP_GATT_DEF_BLE_MTU_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, %struct.TYPE_10__*)* @transport_simple_ble_disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @transport_simple_ble_disconnect(i32 %0, i32 %1, %struct.TYPE_10__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store %struct.TYPE_10__* %2, %struct.TYPE_10__** %6, align 8
  %8 = load i32, i32* @TAG, align 4
  %9 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %10 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @ESP_LOGD(i32 %8, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %12)
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** @protoble_internal, align 8
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 1
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %19 = icmp ne %struct.TYPE_9__* %18, null
  br i1 %19, label %20, label %54

20:                                               ; preds = %3
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** @protoble_internal, align 8
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 1
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 1
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 0
  %27 = load i64 (i32, i32)*, i64 (i32, i32)** %26, align 8
  %28 = icmp ne i64 (i32, i32)* %27, null
  br i1 %28, label %29, label %54

29:                                               ; preds = %20
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** @protoble_internal, align 8
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 1
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 1
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 0
  %36 = load i64 (i32, i32)*, i64 (i32, i32)** %35, align 8
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** @protoble_internal, align 8
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 1
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i64 %36(i32 %41, i32 %45)
  store i64 %46, i64* %7, align 8
  %47 = load i64, i64* %7, align 8
  %48 = load i64, i64* @ESP_OK, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %29
  %51 = load i32, i32* @TAG, align 4
  %52 = call i32 @ESP_LOGE(i32 %51, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  br label %53

53:                                               ; preds = %50, %29
  br label %54

54:                                               ; preds = %53, %20, %3
  %55 = load i32, i32* @ESP_GATT_DEF_BLE_MTU_SIZE, align 4
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** @protoble_internal, align 8
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 8
  ret void
}

declare dso_local i32 @ESP_LOGD(i32, i8*, i32) #1

declare dso_local i32 @ESP_LOGE(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

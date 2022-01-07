; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_ble_adv_filter.c_btm_ble_dealloc_addr_filter_counter.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_ble_adv_filter.c_btm_ble_dealloc_addr_filter_counter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i64 }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_8__ = type { i32 }

@btm_ble_adv_filt_cb = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@FALSE = common dso_local global i32 0, align 4
@BTM_BLE_PF_TYPE_ALL = common dso_local global i64 0, align 8
@cmn_ble_adv_vsc_cb = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@BD_ADDR_LEN = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btm_ble_dealloc_addr_filter_counter(%struct.TYPE_8__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @btm_ble_adv_filt_cb, i32 0, i32 0), align 8
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i64 1
  store %struct.TYPE_7__* %9, %struct.TYPE_7__** %6, align 8
  %10 = load i32, i32* @FALSE, align 4
  store i32 %10, i32* %7, align 4
  %11 = load i64, i64* @BTM_BLE_PF_TYPE_ALL, align 8
  %12 = load i64, i64* %4, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %21

14:                                               ; preds = %2
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %16 = icmp eq %struct.TYPE_8__* null, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %14
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @btm_ble_adv_filt_cb, i32 0, i32 0), align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i64 0
  %20 = call i32 @memset(%struct.TYPE_7__* %19, i32 0, i32 16)
  br label %21

21:                                               ; preds = %17, %14, %2
  store i64 0, i64* %5, align 8
  br label %22

22:                                               ; preds = %56, %21
  %23 = load i64, i64* %5, align 8
  %24 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cmn_ble_adv_vsc_cb, i32 0, i32 0), align 8
  %25 = icmp slt i64 %23, %24
  br i1 %25, label %26, label %61

26:                                               ; preds = %22
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %55

31:                                               ; preds = %26
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %33 = icmp eq %struct.TYPE_8__* null, %32
  br i1 %33, label %47, label %34

34:                                               ; preds = %31
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %36 = icmp ne %struct.TYPE_8__* null, %35
  br i1 %36, label %37, label %55

37:                                               ; preds = %34
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @BD_ADDR_LEN, align 4
  %45 = call i64 @memcmp(i32 %40, i32 %43, i32 %44)
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %55

47:                                               ; preds = %37, %31
  %48 = load i32, i32* @TRUE, align 4
  store i32 %48, i32* %7, align 4
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %50 = call i32 @memset(%struct.TYPE_7__* %49, i32 0, i32 16)
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %52 = icmp ne %struct.TYPE_8__* null, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %47
  br label %61

54:                                               ; preds = %47
  br label %55

55:                                               ; preds = %54, %37, %34, %26
  br label %56

56:                                               ; preds = %55
  %57 = load i64, i64* %5, align 8
  %58 = add nsw i64 %57, 1
  store i64 %58, i64* %5, align 8
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 1
  store %struct.TYPE_7__* %60, %struct.TYPE_7__** %6, align 8
  br label %22

61:                                               ; preds = %53, %22
  %62 = load i32, i32* %7, align 4
  ret i32 %62
}

declare dso_local i32 @memset(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i64 @memcmp(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

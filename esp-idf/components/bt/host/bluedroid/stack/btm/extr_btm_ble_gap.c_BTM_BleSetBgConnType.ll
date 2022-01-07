; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_ble_gap.c_BTM_BleSetBgConnType.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_ble_gap.c_BTM_BleSetBgConnType.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i32 (...)* }

@TRUE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"BTM_BleSetBgConnType \00", align 1
@FALSE = common dso_local global i64 0, align 8
@btm_cb = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"invalid bg connection type : %d \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @BTM_BleSetBgConnType(i32 %0, i32* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  %7 = load i64, i64* @TRUE, align 8
  store i64 %7, i64* %6, align 8
  %8 = call i32 @BTM_TRACE_EVENT(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %9 = call %struct.TYPE_5__* (...) @controller_get_interface()
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load i32 (...)*, i32 (...)** %10, align 8
  %12 = call i32 (...) %11()
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %2
  %15 = load i64, i64* @FALSE, align 8
  store i64 %15, i64* %3, align 8
  br label %62

16:                                               ; preds = %2
  %17 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @btm_cb, i32 0, i32 0, i32 0), align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp ne i32 %17, %18
  br i1 %19, label %20, label %60

20:                                               ; preds = %16
  %21 = load i32, i32* %4, align 4
  switch i32 %21, label %50 [
    i32 130, label %22
    i32 128, label %25
    i32 129, label %35
  ]

22:                                               ; preds = %20
  %23 = load i64, i64* @TRUE, align 8
  %24 = call i32 @btm_ble_start_auto_conn(i64 %23)
  br label %54

25:                                               ; preds = %20
  %26 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @btm_cb, i32 0, i32 0, i32 0), align 4
  %27 = icmp eq i32 %26, 130
  br i1 %27, label %28, label %31

28:                                               ; preds = %25
  %29 = load i64, i64* @FALSE, align 8
  %30 = call i32 @btm_ble_start_auto_conn(i64 %29)
  br label %31

31:                                               ; preds = %28, %25
  %32 = load i64, i64* @TRUE, align 8
  %33 = load i32*, i32** %5, align 8
  %34 = call i32 @btm_ble_start_select_conn(i64 %32, i32* %33)
  br label %54

35:                                               ; preds = %20
  %36 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @btm_cb, i32 0, i32 0, i32 0), align 4
  %37 = icmp eq i32 %36, 130
  br i1 %37, label %38, label %41

38:                                               ; preds = %35
  %39 = load i64, i64* @FALSE, align 8
  %40 = call i32 @btm_ble_start_auto_conn(i64 %39)
  br label %48

41:                                               ; preds = %35
  %42 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @btm_cb, i32 0, i32 0, i32 0), align 4
  %43 = icmp eq i32 %42, 128
  br i1 %43, label %44, label %47

44:                                               ; preds = %41
  %45 = load i64, i64* @FALSE, align 8
  %46 = call i32 @btm_ble_start_select_conn(i64 %45, i32* null)
  br label %47

47:                                               ; preds = %44, %41
  br label %48

48:                                               ; preds = %47, %38
  %49 = load i64, i64* @TRUE, align 8
  store i64 %49, i64* %6, align 8
  br label %54

50:                                               ; preds = %20
  %51 = load i32, i32* %4, align 4
  %52 = call i32 @BTM_TRACE_ERROR(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %51)
  %53 = load i64, i64* @FALSE, align 8
  store i64 %53, i64* %6, align 8
  br label %54

54:                                               ; preds = %50, %48, %31, %22
  %55 = load i64, i64* %6, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %54
  %58 = load i32, i32* %4, align 4
  store i32 %58, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @btm_cb, i32 0, i32 0, i32 0), align 4
  br label %59

59:                                               ; preds = %57, %54
  br label %60

60:                                               ; preds = %59, %16
  %61 = load i64, i64* %6, align 8
  store i64 %61, i64* %3, align 8
  br label %62

62:                                               ; preds = %60, %14
  %63 = load i64, i64* %3, align 8
  ret i64 %63
}

declare dso_local i32 @BTM_TRACE_EVENT(i8*) #1

declare dso_local %struct.TYPE_5__* @controller_get_interface(...) #1

declare dso_local i32 @btm_ble_start_auto_conn(i64) #1

declare dso_local i32 @btm_ble_start_select_conn(i64, i32*) #1

declare dso_local i32 @BTM_TRACE_ERROR(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

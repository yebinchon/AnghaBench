; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/gatt/extr_gatt_utils.c_gatt_update_auto_connect_dev.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/gatt/extr_gatt_utils.c_gatt_update_auto_connect_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i64 0, align 8
@BT_TRANSPORT_LE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"gatt_update_auto_connect_dev \00", align 1
@.str.1 = private unnamed_addr constant [60 x i8] c"gatt_update_auto_connect_dev - gatt_if %d is not registered\00", align 1
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @gatt_update_auto_connect_dev(i32 %0, i64 %1, i32 %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  store i32 %0, i32* %6, align 4
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  %13 = load i64, i64* @FALSE, align 8
  store i64 %13, i64* %10, align 8
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* @BT_TRANSPORT_LE, align 4
  %16 = call i32* @gatt_find_tcb_by_addr(i32 %14, i32 %15)
  store i32* %16, i32** %12, align 8
  %17 = call i32 @GATT_TRACE_API(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* %6, align 4
  %19 = call i32* @gatt_get_regcb(i32 %18)
  store i32* %19, i32** %11, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %21, label %25

21:                                               ; preds = %4
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @GATT_TRACE_ERROR(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.1, i64 0, i64 0), i32 %22)
  %24 = load i64, i64* @FALSE, align 8
  store i64 %24, i64* %5, align 8
  br label %52

25:                                               ; preds = %4
  %26 = load i64, i64* %7, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %45

28:                                               ; preds = %25
  %29 = load i32*, i32** %11, align 8
  %30 = load i32, i32* %8, align 4
  %31 = load i64, i64* %9, align 8
  %32 = call i64 @gatt_add_bg_dev_list(i32* %29, i32 %30, i64 %31)
  store i64 %32, i64* %10, align 8
  %33 = load i64, i64* %10, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %44

35:                                               ; preds = %28
  %36 = load i32*, i32** %12, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %38, label %44

38:                                               ; preds = %35
  %39 = load i32, i32* %6, align 4
  %40 = load i32*, i32** %12, align 8
  %41 = load i32, i32* @TRUE, align 4
  %42 = load i32, i32* @TRUE, align 4
  %43 = call i32 @gatt_update_app_use_link_flag(i32 %39, i32* %40, i32 %41, i32 %42)
  br label %44

44:                                               ; preds = %38, %35, %28
  br label %50

45:                                               ; preds = %25
  %46 = load i32*, i32** %11, align 8
  %47 = load i32, i32* %8, align 4
  %48 = load i64, i64* %9, align 8
  %49 = call i64 @gatt_remove_bg_dev_from_list(i32* %46, i32 %47, i64 %48)
  store i64 %49, i64* %10, align 8
  br label %50

50:                                               ; preds = %45, %44
  %51 = load i64, i64* %10, align 8
  store i64 %51, i64* %5, align 8
  br label %52

52:                                               ; preds = %50, %21
  %53 = load i64, i64* %5, align 8
  ret i64 %53
}

declare dso_local i32* @gatt_find_tcb_by_addr(i32, i32) #1

declare dso_local i32 @GATT_TRACE_API(i8*) #1

declare dso_local i32* @gatt_get_regcb(i32) #1

declare dso_local i32 @GATT_TRACE_ERROR(i8*, i32) #1

declare dso_local i64 @gatt_add_bg_dev_list(i32*, i32, i64) #1

declare dso_local i32 @gatt_update_app_use_link_flag(i32, i32*, i32, i32) #1

declare dso_local i64 @gatt_remove_bg_dev_from_list(i32*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

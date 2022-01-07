; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/gatt/extr_gatt_utils.c_gatt_cancel_open.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/gatt/extr_gatt_utils.c_gatt_cancel_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TRUE = common dso_local global i32 0, align 4
@BT_TRANSPORT_LE = common dso_local global i32 0, align 4
@GATT_CH_OPEN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [55 x i8] c"GATT_CancelConnect - link connected Too late to cancel\00", align 1
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gatt_cancel_open(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  store i32* null, i32** %5, align 8
  %7 = load i32, i32* @TRUE, align 4
  store i32 %7, i32* %6, align 4
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @BT_TRANSPORT_LE, align 4
  %10 = call i32* @gatt_find_tcb_by_addr(i32 %8, i32 %9)
  store i32* %10, i32** %5, align 8
  %11 = load i32*, i32** %5, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %13, label %35

13:                                               ; preds = %2
  %14 = load i32*, i32** %5, align 8
  %15 = call i64 @gatt_get_ch_state(i32* %14)
  %16 = load i64, i64* @GATT_CH_OPEN, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %13
  %19 = call i32 @GATT_TRACE_ERROR(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @FALSE, align 4
  store i32 %20, i32* %6, align 4
  br label %34

21:                                               ; preds = %13
  %22 = load i32, i32* %3, align 4
  %23 = load i32*, i32** %5, align 8
  %24 = load i32, i32* @FALSE, align 4
  %25 = load i32, i32* @FALSE, align 4
  %26 = call i32 @gatt_update_app_use_link_flag(i32 %22, i32* %23, i32 %24, i32 %25)
  %27 = load i32*, i32** %5, align 8
  %28 = call i32 @gatt_num_apps_hold_link(i32* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %21
  %31 = load i32*, i32** %5, align 8
  %32 = call i32 @gatt_disconnect(i32* %31)
  br label %33

33:                                               ; preds = %30, %21
  br label %34

34:                                               ; preds = %33, %18
  br label %35

35:                                               ; preds = %34, %2
  %36 = load i32, i32* %6, align 4
  ret i32 %36
}

declare dso_local i32* @gatt_find_tcb_by_addr(i32, i32) #1

declare dso_local i64 @gatt_get_ch_state(i32*) #1

declare dso_local i32 @GATT_TRACE_ERROR(i8*) #1

declare dso_local i32 @gatt_update_app_use_link_flag(i32, i32*, i32, i32) #1

declare dso_local i32 @gatt_num_apps_hold_link(i32*) #1

declare dso_local i32 @gatt_disconnect(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

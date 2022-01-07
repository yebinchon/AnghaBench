; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/gatt/extr_gatt_main.c_gatt_proc_srv_chg.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/gatt/extr_gatt_main.c_gatt_proc_srv_chg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32*, i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"gatt_proc_srv_chg\00", align 1
@gatt_cb = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [47 x i8] c"discard srv chg - already has one in the queue\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gatt_proc_srv_chg() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = load i32, i32* @FALSE, align 4
  store i32 %7, i32* %4, align 4
  %8 = call i32 @GATT_TRACE_DEBUG(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %9 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @gatt_cb, i32 0, i32 2, i32 0), align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %38

11:                                               ; preds = %0
  %12 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @gatt_cb, i32 0, i32 1), align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %38

14:                                               ; preds = %11
  %15 = call i32 (...) @gatt_set_srv_chg()
  store i64 0, i64* %1, align 8
  br label %16

16:                                               ; preds = %34, %14
  %17 = load i64, i64* %1, align 8
  %18 = load i32, i32* %3, align 4
  %19 = call i64 @gatt_find_the_connected_bda(i64 %17, i32 %18, i64* %2, i32* %6)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %37

21:                                               ; preds = %16
  %22 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @gatt_cb, i32 0, i32 0), align 8
  %23 = load i64, i64* %2, align 8
  %24 = getelementptr inbounds i32, i32* %22, i64 %23
  store i32* %24, i32** %5, align 8
  %25 = load i32*, i32** %5, align 8
  %26 = call i32 @gatt_is_srv_chg_ind_pending(i32* %25)
  store i32 %26, i32* %4, align 4
  %27 = load i32, i32* %4, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %21
  %30 = load i32, i32* %3, align 4
  %31 = call i32 @gatt_send_srv_chg_ind(i32 %30)
  br label %34

32:                                               ; preds = %21
  %33 = call i32 @GATT_TRACE_DEBUG(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  br label %34

34:                                               ; preds = %32, %29
  %35 = load i64, i64* %2, align 8
  %36 = add i64 %35, 1
  store i64 %36, i64* %2, align 8
  store i64 %36, i64* %1, align 8
  br label %16

37:                                               ; preds = %16
  br label %38

38:                                               ; preds = %37, %11, %0
  ret void
}

declare dso_local i32 @GATT_TRACE_DEBUG(i8*) #1

declare dso_local i32 @gatt_set_srv_chg(...) #1

declare dso_local i64 @gatt_find_the_connected_bda(i64, i32, i64*, i32*) #1

declare dso_local i32 @gatt_is_srv_chg_ind_pending(i32*) #1

declare dso_local i32 @gatt_send_srv_chg_ind(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_ble.c_BTM_BleOobDataReply.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_ble.c_BTM_BleOobDataReply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@BTM_SUCCESS = common dso_local global i64 0, align 8
@SMP_SUCCESS = common dso_local global i32 0, align 4
@SMP_OOB_FAIL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"BTM_BleOobDataReply\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"BTM_BleOobDataReply() to Unknown device\00", align 1
@BTM_SEC_LE_AUTHENTICATED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @BTM_BleOobDataReply(i32 %0, i64 %1, i64 %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_3__*, align 8
  store i32 %0, i32* %5, align 4
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64* %3, i64** %8, align 8
  %11 = load i64, i64* %6, align 8
  %12 = load i64, i64* @BTM_SUCCESS, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %4
  %15 = load i32, i32* @SMP_SUCCESS, align 4
  br label %18

16:                                               ; preds = %4
  %17 = load i32, i32* @SMP_OOB_FAIL, align 4
  br label %18

18:                                               ; preds = %16, %14
  %19 = phi i32 [ %15, %14 ], [ %17, %16 ]
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %5, align 4
  %21 = call %struct.TYPE_3__* @btm_find_dev(i32 %20)
  store %struct.TYPE_3__* %21, %struct.TYPE_3__** %10, align 8
  %22 = call i32 @BTM_TRACE_DEBUG(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %24 = icmp eq %struct.TYPE_3__* %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %18
  %26 = call i32 @BTM_TRACE_ERROR(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  br label %38

27:                                               ; preds = %18
  %28 = load i32, i32* @BTM_SEC_LE_AUTHENTICATED, align 4
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = or i32 %31, %28
  store i32 %32, i32* %30, align 4
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* %9, align 4
  %35 = load i64, i64* %7, align 8
  %36 = load i64*, i64** %8, align 8
  %37 = call i32 @SMP_OobDataReply(i32 %33, i32 %34, i64 %35, i64* %36)
  br label %38

38:                                               ; preds = %27, %25
  ret void
}

declare dso_local %struct.TYPE_3__* @btm_find_dev(i32) #1

declare dso_local i32 @BTM_TRACE_DEBUG(i8*) #1

declare dso_local i32 @BTM_TRACE_ERROR(i8*) #1

declare dso_local i32 @SMP_OobDataReply(i32, i32, i64, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

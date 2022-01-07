; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_inq.c_BTM_SetInquiryScanType.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_inq.c_BTM_SetInquiryScanType.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_5__ = type { i32 (...)* }

@.str = private unnamed_addr constant [24 x i8] c"BTM_SetInquiryScanType\0A\00", align 1
@BTM_SCAN_TYPE_STANDARD = common dso_local global i64 0, align 8
@BTM_SCAN_TYPE_INTERLACED = common dso_local global i64 0, align 8
@BTM_ILLEGAL_VALUE = common dso_local global i32 0, align 4
@BTM_MODE_UNSUPPORTED = common dso_local global i32 0, align 4
@btm_cb = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@BTM_NO_RESOURCES = common dso_local global i32 0, align 4
@BTM_WRONG_MODE = common dso_local global i32 0, align 4
@BTM_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BTM_SetInquiryScanType(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %4 = call i32 @BTM_TRACE_API(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %5 = load i64, i64* %3, align 8
  %6 = load i64, i64* @BTM_SCAN_TYPE_STANDARD, align 8
  %7 = icmp ne i64 %5, %6
  br i1 %7, label %8, label %14

8:                                                ; preds = %1
  %9 = load i64, i64* %3, align 8
  %10 = load i64, i64* @BTM_SCAN_TYPE_INTERLACED, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %8
  %13 = load i32, i32* @BTM_ILLEGAL_VALUE, align 4
  store i32 %13, i32* %2, align 4
  br label %44

14:                                               ; preds = %8, %1
  %15 = call %struct.TYPE_5__* (...) @controller_get_interface()
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i32 (...)*, i32 (...)** %16, align 8
  %18 = call i32 (...) %17()
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %14
  %21 = load i32, i32* @BTM_MODE_UNSUPPORTED, align 4
  store i32 %21, i32* %2, align 4
  br label %44

22:                                               ; preds = %14
  %23 = load i64, i64* %3, align 8
  %24 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @btm_cb, i32 0, i32 0, i32 0), align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %42

26:                                               ; preds = %22
  %27 = call i64 (...) @BTM_IsDeviceUp()
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %39

29:                                               ; preds = %26
  %30 = load i64, i64* %3, align 8
  %31 = trunc i64 %30 to i32
  %32 = call i64 @btsnd_hcic_write_inqscan_type(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  %35 = load i64, i64* %3, align 8
  store i64 %35, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @btm_cb, i32 0, i32 0, i32 0), align 8
  br label %38

36:                                               ; preds = %29
  %37 = load i32, i32* @BTM_NO_RESOURCES, align 4
  store i32 %37, i32* %2, align 4
  br label %44

38:                                               ; preds = %34
  br label %41

39:                                               ; preds = %26
  %40 = load i32, i32* @BTM_WRONG_MODE, align 4
  store i32 %40, i32* %2, align 4
  br label %44

41:                                               ; preds = %38
  br label %42

42:                                               ; preds = %41, %22
  %43 = load i32, i32* @BTM_SUCCESS, align 4
  store i32 %43, i32* %2, align 4
  br label %44

44:                                               ; preds = %42, %39, %36, %20, %12
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local i32 @BTM_TRACE_API(i8*) #1

declare dso_local %struct.TYPE_5__* @controller_get_interface(...) #1

declare dso_local i64 @BTM_IsDeviceUp(...) #1

declare dso_local i64 @btsnd_hcic_write_inqscan_type(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_inq.c_BTM_SetInquiryMode.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_inq.c_BTM_SetInquiryMode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 (...)*, i32 (...)* }

@.str = private unnamed_addr constant [20 x i8] c"BTM_SetInquiryMode\0A\00", align 1
@BTM_INQ_RESULT_STANDARD = common dso_local global i64 0, align 8
@BTM_INQ_RESULT_WITH_RSSI = common dso_local global i64 0, align 8
@BTM_MODE_UNSUPPORTED = common dso_local global i32 0, align 4
@BTM_INQ_RESULT_EXTENDED = common dso_local global i64 0, align 8
@BTM_ILLEGAL_VALUE = common dso_local global i32 0, align 4
@BTM_WRONG_MODE = common dso_local global i32 0, align 4
@BTM_NO_RESOURCES = common dso_local global i32 0, align 4
@BTM_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BTM_SetInquiryMode(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  store i64 %0, i64* %3, align 8
  %5 = call %struct.TYPE_3__* (...) @controller_get_interface()
  store %struct.TYPE_3__* %5, %struct.TYPE_3__** %4, align 8
  %6 = call i32 @BTM_TRACE_API(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %7 = load i64, i64* %3, align 8
  %8 = load i64, i64* @BTM_INQ_RESULT_STANDARD, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %41

11:                                               ; preds = %1
  %12 = load i64, i64* %3, align 8
  %13 = load i64, i64* @BTM_INQ_RESULT_WITH_RSSI, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %24

15:                                               ; preds = %11
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  %18 = load i32 (...)*, i32 (...)** %17, align 8
  %19 = call i32 (...) %18()
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %15
  %22 = load i32, i32* @BTM_MODE_UNSUPPORTED, align 4
  store i32 %22, i32* %2, align 4
  br label %54

23:                                               ; preds = %15
  br label %40

24:                                               ; preds = %11
  %25 = load i64, i64* %3, align 8
  %26 = load i64, i64* @BTM_INQ_RESULT_EXTENDED, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %37

28:                                               ; preds = %24
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32 (...)*, i32 (...)** %30, align 8
  %32 = call i32 (...) %31()
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %28
  %35 = load i32, i32* @BTM_MODE_UNSUPPORTED, align 4
  store i32 %35, i32* %2, align 4
  br label %54

36:                                               ; preds = %28
  br label %39

37:                                               ; preds = %24
  %38 = load i32, i32* @BTM_ILLEGAL_VALUE, align 4
  store i32 %38, i32* %2, align 4
  br label %54

39:                                               ; preds = %36
  br label %40

40:                                               ; preds = %39, %23
  br label %41

41:                                               ; preds = %40, %10
  %42 = call i32 (...) @BTM_IsDeviceUp()
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %46, label %44

44:                                               ; preds = %41
  %45 = load i32, i32* @BTM_WRONG_MODE, align 4
  store i32 %45, i32* %2, align 4
  br label %54

46:                                               ; preds = %41
  %47 = load i64, i64* %3, align 8
  %48 = call i32 @btsnd_hcic_write_inquiry_mode(i64 %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %52, label %50

50:                                               ; preds = %46
  %51 = load i32, i32* @BTM_NO_RESOURCES, align 4
  store i32 %51, i32* %2, align 4
  br label %54

52:                                               ; preds = %46
  %53 = load i32, i32* @BTM_SUCCESS, align 4
  store i32 %53, i32* %2, align 4
  br label %54

54:                                               ; preds = %52, %50, %44, %37, %34, %21
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local %struct.TYPE_3__* @controller_get_interface(...) #1

declare dso_local i32 @BTM_TRACE_API(i8*) #1

declare dso_local i32 @BTM_IsDeviceUp(...) #1

declare dso_local i32 @btsnd_hcic_write_inquiry_mode(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

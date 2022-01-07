; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_inq.c_BTM_CancelPeriodicInquiry.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_inq.c_BTM_CancelPeriodicInquiry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i64, i32, i32* }

@btm_cb = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@BTM_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"BTM_CancelPeriodicInquiry called\0A\00", align 1
@BTM_WRONG_MODE = common dso_local global i32 0, align 4
@BTM_PERIODIC_INQUIRY_ACTIVE = common dso_local global i32 0, align 4
@BTM_INQUIRY_INACTIVE = common dso_local global i32 0, align 4
@BTM_NO_RESOURCES = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BTM_CancelPeriodicInquiry() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i32, align 4
  store %struct.TYPE_3__* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @btm_cb, i32 0, i32 0), %struct.TYPE_3__** %2, align 8
  %4 = load i32, i32* @BTM_SUCCESS, align 4
  store i32 %4, i32* %3, align 4
  %5 = call i32 @BTM_TRACE_API(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %6 = call i32 (...) @BTM_IsDeviceUp()
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %0
  %9 = load i32, i32* @BTM_WRONG_MODE, align 4
  store i32 %9, i32* %1, align 4
  br label %41

10:                                               ; preds = %0
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @btm_cb, i32 0, i32 0, i32 0), align 8
  %12 = load i32, i32* @BTM_PERIODIC_INQUIRY_ACTIVE, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %39

15:                                               ; preds = %10
  %16 = load i32, i32* @BTM_INQUIRY_INACTIVE, align 4
  store i32 %16, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @btm_cb, i32 0, i32 0, i32 0), align 8
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @btm_cb, i32 0, i32 0, i32 4), align 8
  %17 = call i32 (...) @btsnd_hcic_exit_per_inq()
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %15
  %20 = load i32, i32* @BTM_NO_RESOURCES, align 4
  store i32 %20, i32* %3, align 4
  br label %21

21:                                               ; preds = %19, %15
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %21
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 8
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %28, align 8
  br label %31

31:                                               ; preds = %26, %21
  %32 = load i64, i64* @FALSE, align 8
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 2
  store i64 %32, i64* %34, align 8
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %36, align 4
  br label %39

39:                                               ; preds = %31, %10
  %40 = load i32, i32* %3, align 4
  store i32 %40, i32* %1, align 4
  br label %41

41:                                               ; preds = %39, %8
  %42 = load i32, i32* %1, align 4
  ret i32 %42
}

declare dso_local i32 @BTM_TRACE_API(i8*) #1

declare dso_local i32 @BTM_IsDeviceUp(...) #1

declare dso_local i32 @btsnd_hcic_exit_per_inq(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

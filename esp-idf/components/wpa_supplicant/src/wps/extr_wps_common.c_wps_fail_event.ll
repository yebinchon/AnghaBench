; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/wps/extr_wps_common.c_wps_fail_event.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/wps/extr_wps_common.c_wps_fail_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wps_context = type { i32, i32 (i32, i32, %union.wps_event_data*)* }
%union.wps_event_data = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i8*, i8* }

@WPS_EV_FAIL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wps_fail_event(%struct.wps_context* %0, i32 %1, i8* %2, i8* %3) #0 {
  %5 = alloca %struct.wps_context*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %union.wps_event_data*, align 8
  store %struct.wps_context* %0, %struct.wps_context** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %10 = call i64 @os_zalloc(i32 24)
  %11 = inttoptr i64 %10 to %union.wps_event_data*
  store %union.wps_event_data* %11, %union.wps_event_data** %9, align 8
  %12 = load %union.wps_event_data*, %union.wps_event_data** %9, align 8
  %13 = icmp eq %union.wps_event_data* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %4
  br label %49

15:                                               ; preds = %4
  %16 = load %struct.wps_context*, %struct.wps_context** %5, align 8
  %17 = getelementptr inbounds %struct.wps_context, %struct.wps_context* %16, i32 0, i32 1
  %18 = load i32 (i32, i32, %union.wps_event_data*)*, i32 (i32, i32, %union.wps_event_data*)** %17, align 8
  %19 = icmp eq i32 (i32, i32, %union.wps_event_data*)* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %15
  %21 = load %union.wps_event_data*, %union.wps_event_data** %9, align 8
  %22 = call i32 @os_free(%union.wps_event_data* %21)
  br label %49

23:                                               ; preds = %15
  %24 = load %union.wps_event_data*, %union.wps_event_data** %9, align 8
  %25 = call i32 @os_memset(%union.wps_event_data* %24, i32 0, i32 24)
  %26 = load i32, i32* %6, align 4
  %27 = load %union.wps_event_data*, %union.wps_event_data** %9, align 8
  %28 = bitcast %union.wps_event_data* %27 to %struct.TYPE_2__*
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  store i32 %26, i32* %29, align 8
  %30 = load i8*, i8** %7, align 8
  %31 = load %union.wps_event_data*, %union.wps_event_data** %9, align 8
  %32 = bitcast %union.wps_event_data* %31 to %struct.TYPE_2__*
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 2
  store i8* %30, i8** %33, align 8
  %34 = load i8*, i8** %8, align 8
  %35 = load %union.wps_event_data*, %union.wps_event_data** %9, align 8
  %36 = bitcast %union.wps_event_data* %35 to %struct.TYPE_2__*
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  store i8* %34, i8** %37, align 8
  %38 = load %struct.wps_context*, %struct.wps_context** %5, align 8
  %39 = getelementptr inbounds %struct.wps_context, %struct.wps_context* %38, i32 0, i32 1
  %40 = load i32 (i32, i32, %union.wps_event_data*)*, i32 (i32, i32, %union.wps_event_data*)** %39, align 8
  %41 = load %struct.wps_context*, %struct.wps_context** %5, align 8
  %42 = getelementptr inbounds %struct.wps_context, %struct.wps_context* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @WPS_EV_FAIL, align 4
  %45 = load %union.wps_event_data*, %union.wps_event_data** %9, align 8
  %46 = call i32 %40(i32 %43, i32 %44, %union.wps_event_data* %45)
  %47 = load %union.wps_event_data*, %union.wps_event_data** %9, align 8
  %48 = call i32 @os_free(%union.wps_event_data* %47)
  br label %49

49:                                               ; preds = %23, %20, %14
  ret void
}

declare dso_local i64 @os_zalloc(i32) #1

declare dso_local i32 @os_free(%union.wps_event_data*) #1

declare dso_local i32 @os_memset(%union.wps_event_data*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/wps/extr_wps_common.c_wps_pwd_auth_fail_event.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/wps/extr_wps_common.c_wps_pwd_auth_fail_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wps_context = type { i32, i32 (i32, i32, %union.wps_event_data*)* }
%union.wps_event_data = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@WPS_EV_PWD_AUTH_FAIL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wps_pwd_auth_fail_event(%struct.wps_context* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.wps_context*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %union.wps_event_data*, align 8
  store %struct.wps_context* %0, %struct.wps_context** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = call i64 @os_zalloc(i32 8)
  %9 = inttoptr i64 %8 to %union.wps_event_data*
  store %union.wps_event_data* %9, %union.wps_event_data** %7, align 8
  %10 = load %union.wps_event_data*, %union.wps_event_data** %7, align 8
  %11 = icmp eq %union.wps_event_data* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  br label %43

13:                                               ; preds = %3
  %14 = load %struct.wps_context*, %struct.wps_context** %4, align 8
  %15 = getelementptr inbounds %struct.wps_context, %struct.wps_context* %14, i32 0, i32 1
  %16 = load i32 (i32, i32, %union.wps_event_data*)*, i32 (i32, i32, %union.wps_event_data*)** %15, align 8
  %17 = icmp eq i32 (i32, i32, %union.wps_event_data*)* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %13
  %19 = load %union.wps_event_data*, %union.wps_event_data** %7, align 8
  %20 = call i32 @os_free(%union.wps_event_data* %19)
  br label %43

21:                                               ; preds = %13
  %22 = load %union.wps_event_data*, %union.wps_event_data** %7, align 8
  %23 = call i32 @os_memset(%union.wps_event_data* %22, i32 0, i32 8)
  %24 = load i32, i32* %5, align 4
  %25 = load %union.wps_event_data*, %union.wps_event_data** %7, align 8
  %26 = bitcast %union.wps_event_data* %25 to %struct.TYPE_2__*
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  store i32 %24, i32* %27, align 4
  %28 = load i32, i32* %6, align 4
  %29 = load %union.wps_event_data*, %union.wps_event_data** %7, align 8
  %30 = bitcast %union.wps_event_data* %29 to %struct.TYPE_2__*
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  store i32 %28, i32* %31, align 4
  %32 = load %struct.wps_context*, %struct.wps_context** %4, align 8
  %33 = getelementptr inbounds %struct.wps_context, %struct.wps_context* %32, i32 0, i32 1
  %34 = load i32 (i32, i32, %union.wps_event_data*)*, i32 (i32, i32, %union.wps_event_data*)** %33, align 8
  %35 = load %struct.wps_context*, %struct.wps_context** %4, align 8
  %36 = getelementptr inbounds %struct.wps_context, %struct.wps_context* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @WPS_EV_PWD_AUTH_FAIL, align 4
  %39 = load %union.wps_event_data*, %union.wps_event_data** %7, align 8
  %40 = call i32 %34(i32 %37, i32 %38, %union.wps_event_data* %39)
  %41 = load %union.wps_event_data*, %union.wps_event_data** %7, align 8
  %42 = call i32 @os_free(%union.wps_event_data* %41)
  br label %43

43:                                               ; preds = %21, %18, %12
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

; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/esp_supplicant/extr_esp_wps.c_wifi_station_wps_msg_timeout_internal.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/esp_supplicant/extr_esp_wps.c_wifi_station_wps_msg_timeout_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wps_sm = type { %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64 }

@gWpsSm = common dso_local global %struct.wps_sm* null, align 8
@WPS_FINISHED = common dso_local global i64 0, align 8
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"wps msg timeout WPS_FINISHED\00", align 1
@RECV_M2 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [24 x i8] c"wps msg timeout RECV_M2\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"wps recev m2/m2d timeout------>\00", align 1
@WPS_FAIL_REASON_RECV_M2D = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wifi_station_wps_msg_timeout_internal() #0 {
  %1 = alloca %struct.wps_sm*, align 8
  %2 = load %struct.wps_sm*, %struct.wps_sm** @gWpsSm, align 8
  store %struct.wps_sm* %2, %struct.wps_sm** %1, align 8
  %3 = load %struct.wps_sm*, %struct.wps_sm** %1, align 8
  %4 = icmp ne %struct.wps_sm* %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %0
  br label %39

6:                                                ; preds = %0
  %7 = load %struct.wps_sm*, %struct.wps_sm** %1, align 8
  %8 = getelementptr inbounds %struct.wps_sm, %struct.wps_sm* %7, i32 0, i32 1
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @WPS_FINISHED, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %18

14:                                               ; preds = %6
  %15 = load i32, i32* @MSG_DEBUG, align 4
  %16 = call i32 @wpa_printf(i32 %15, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %17 = call i32 (...) @wps_finish()
  br label %39

18:                                               ; preds = %6
  %19 = load %struct.wps_sm*, %struct.wps_sm** %1, align 8
  %20 = getelementptr inbounds %struct.wps_sm, %struct.wps_sm* %19, i32 0, i32 1
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @RECV_M2, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %38

26:                                               ; preds = %18
  %27 = load i32, i32* @MSG_DEBUG, align 4
  %28 = call i32 @wpa_printf(i32 %27, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %29 = load i32, i32* @MSG_DEBUG, align 4
  %30 = call i32 @wpa_printf(i32 %29, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %31 = load %struct.wps_sm*, %struct.wps_sm** %1, align 8
  %32 = getelementptr inbounds %struct.wps_sm, %struct.wps_sm* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @wps_add_discard_ap(i32 %34)
  %36 = load i32, i32* @WPS_FAIL_REASON_RECV_M2D, align 4
  %37 = call i32 @wps_stop_process(i32 %36)
  br label %38

38:                                               ; preds = %26, %18
  br label %39

39:                                               ; preds = %5, %38, %14
  ret void
}

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32 @wps_finish(...) #1

declare dso_local i32 @wps_add_discard_ap(i32) #1

declare dso_local i32 @wps_stop_process(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

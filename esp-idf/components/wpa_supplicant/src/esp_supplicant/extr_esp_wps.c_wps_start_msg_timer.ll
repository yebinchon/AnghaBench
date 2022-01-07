; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/esp_supplicant/extr_esp_wps.c_wps_start_msg_timer.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/esp_supplicant/extr_esp_wps.c_wps_start_msg_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wps_sm = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@gWpsSm = common dso_local global %struct.wps_sm* null, align 8
@ESP_FAIL = common dso_local global i32 0, align 4
@WPS_FINISHED = common dso_local global i64 0, align 8
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"start msg timer WPS_FINISHED %d ms\00", align 1
@RECV_M2 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [30 x i8] c"start msg timer RECV_M2 %d ms\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wps_start_msg_timer() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.wps_sm*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = load %struct.wps_sm*, %struct.wps_sm** @gWpsSm, align 8
  store %struct.wps_sm* %5, %struct.wps_sm** %2, align 8
  %6 = load i32, i32* @ESP_FAIL, align 4
  store i32 %6, i32* %4, align 4
  %7 = load %struct.wps_sm*, %struct.wps_sm** @gWpsSm, align 8
  %8 = icmp ne %struct.wps_sm* %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %0
  %10 = load i32, i32* @ESP_FAIL, align 4
  store i32 %10, i32* %1, align 4
  br label %52

11:                                               ; preds = %0
  %12 = load %struct.wps_sm*, %struct.wps_sm** %2, align 8
  %13 = getelementptr inbounds %struct.wps_sm, %struct.wps_sm* %12, i32 0, i32 1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @WPS_FINISHED, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %30

19:                                               ; preds = %11
  store i32 100, i32* %3, align 4
  %20 = load i32, i32* @MSG_DEBUG, align 4
  %21 = load i32, i32* %3, align 4
  %22 = call i32 @wpa_printf(i32 %20, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load %struct.wps_sm*, %struct.wps_sm** %2, align 8
  %24 = getelementptr inbounds %struct.wps_sm, %struct.wps_sm* %23, i32 0, i32 0
  %25 = call i32 @ets_timer_disarm(i32* %24)
  %26 = load %struct.wps_sm*, %struct.wps_sm** %2, align 8
  %27 = getelementptr inbounds %struct.wps_sm, %struct.wps_sm* %26, i32 0, i32 0
  %28 = load i32, i32* %3, align 4
  %29 = call i32 @ets_timer_arm(i32* %27, i32 %28, i32 0)
  store i32 0, i32* %4, align 4
  br label %50

30:                                               ; preds = %11
  %31 = load %struct.wps_sm*, %struct.wps_sm** %2, align 8
  %32 = getelementptr inbounds %struct.wps_sm, %struct.wps_sm* %31, i32 0, i32 1
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @RECV_M2, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %49

38:                                               ; preds = %30
  store i32 5000, i32* %3, align 4
  %39 = load i32, i32* @MSG_DEBUG, align 4
  %40 = load i32, i32* %3, align 4
  %41 = call i32 @wpa_printf(i32 %39, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %40)
  %42 = load %struct.wps_sm*, %struct.wps_sm** %2, align 8
  %43 = getelementptr inbounds %struct.wps_sm, %struct.wps_sm* %42, i32 0, i32 0
  %44 = call i32 @ets_timer_disarm(i32* %43)
  %45 = load %struct.wps_sm*, %struct.wps_sm** %2, align 8
  %46 = getelementptr inbounds %struct.wps_sm, %struct.wps_sm* %45, i32 0, i32 0
  %47 = load i32, i32* %3, align 4
  %48 = call i32 @ets_timer_arm(i32* %46, i32 %47, i32 0)
  store i32 0, i32* %4, align 4
  br label %49

49:                                               ; preds = %38, %30
  br label %50

50:                                               ; preds = %49, %19
  %51 = load i32, i32* %4, align 4
  store i32 %51, i32* %1, align 4
  br label %52

52:                                               ; preds = %50, %9
  %53 = load i32, i32* %1, align 4
  ret i32 %53
}

declare dso_local i32 @wpa_printf(i32, i8*, i32) #1

declare dso_local i32 @ets_timer_disarm(i32*) #1

declare dso_local i32 @ets_timer_arm(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

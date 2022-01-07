; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/wps/extr_wps_registrar.c_wps_process_ap_settings_r.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/wps/extr_wps_registrar.c_wps_process_ap_settings_r.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wps_data = type { %struct.TYPE_6__, i32, i32 (i32, %struct.TYPE_6__*)*, %struct.TYPE_5__*, i64, i64 }
%struct.TYPE_6__ = type { i64, i32* }
%struct.TYPE_5__ = type { i32, i64 }
%struct.wps_parse_attr = type { i32 }
%struct.wpabuf = type { i32 }

@MSG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"WPS: Received old AP configuration from AP\00", align 1
@.str.1 = private unnamed_addr constant [51 x i8] c"WPS: Update AP configuration based on new settings\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wps_data*, %struct.wps_parse_attr*)* @wps_process_ap_settings_r to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wps_process_ap_settings_r(%struct.wps_data* %0, %struct.wps_parse_attr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wps_data*, align 8
  %5 = alloca %struct.wps_parse_attr*, align 8
  %6 = alloca %struct.wpabuf*, align 8
  store %struct.wps_data* %0, %struct.wps_data** %4, align 8
  store %struct.wps_parse_attr* %1, %struct.wps_parse_attr** %5, align 8
  %7 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %8 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %7, i32 0, i32 3
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %2
  %14 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %15 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %14, i32 0, i32 5
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %13, %2
  store i32 0, i32* %3, align 4
  br label %86

19:                                               ; preds = %13
  %20 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %5, align 8
  %21 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %22 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %21, i32 0, i32 0
  %23 = call i64 @wps_process_ap_settings(%struct.wps_parse_attr* %20, %struct.TYPE_6__* %22)
  %24 = icmp slt i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  store i32 -1, i32* %3, align 4
  br label %86

26:                                               ; preds = %19
  %27 = load i32, i32* @MSG_INFO, align 4
  %28 = call i32 @wpa_printf(i32 %27, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %29 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %30 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %29, i32 0, i32 4
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %42

33:                                               ; preds = %26
  %34 = load i32, i32* @MSG_INFO, align 4
  %35 = call i32 @wpa_printf(i32 %34, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0))
  %36 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %37 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %36, i32 0, i32 0
  %38 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %39 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %38, i32 0, i32 4
  %40 = load i64, i64* %39, align 8
  %41 = call i32 @wps_cred_update(%struct.TYPE_6__* %37, i64 %40)
  store i32 0, i32* %3, align 4
  br label %86

42:                                               ; preds = %26
  %43 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %44 = call %struct.wpabuf* @wps_build_ap_cred(%struct.wps_data* %43)
  store %struct.wpabuf* %44, %struct.wpabuf** %6, align 8
  %45 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %46 = icmp eq %struct.wpabuf* %45, null
  br i1 %46, label %47, label %48

47:                                               ; preds = %42
  store i32 -1, i32* %3, align 4
  br label %86

48:                                               ; preds = %42
  %49 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %50 = call i32* @wpabuf_head(%struct.wpabuf* %49)
  %51 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %52 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 1
  store i32* %50, i32** %53, align 8
  %54 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %55 = call i64 @wpabuf_len(%struct.wpabuf* %54)
  %56 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %57 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  store i64 %55, i64* %58, align 8
  %59 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %60 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %59, i32 0, i32 2
  %61 = load i32 (i32, %struct.TYPE_6__*)*, i32 (i32, %struct.TYPE_6__*)** %60, align 8
  %62 = icmp ne i32 (i32, %struct.TYPE_6__*)* %61, null
  br i1 %62, label %63, label %75

63:                                               ; preds = %48
  %64 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %65 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %64, i32 0, i32 2
  %66 = load i32 (i32, %struct.TYPE_6__*)*, i32 (i32, %struct.TYPE_6__*)** %65, align 8
  %67 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %68 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %71 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %70, i32 0, i32 0
  %72 = call i32 %66(i32 %69, %struct.TYPE_6__* %71)
  %73 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %74 = call i32 @wpabuf_free(%struct.wpabuf* %73)
  store i32 1, i32* %3, align 4
  br label %86

75:                                               ; preds = %48
  %76 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %77 = call i32 @wps_sta_cred_cb(%struct.wps_data* %76)
  %78 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %79 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 1
  store i32* null, i32** %80, align 8
  %81 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %82 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 0
  store i64 0, i64* %83, align 8
  %84 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %85 = call i32 @wpabuf_free(%struct.wpabuf* %84)
  store i32 1, i32* %3, align 4
  br label %86

86:                                               ; preds = %75, %63, %47, %33, %25, %18
  %87 = load i32, i32* %3, align 4
  ret i32 %87
}

declare dso_local i64 @wps_process_ap_settings(%struct.wps_parse_attr*, %struct.TYPE_6__*) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32 @wps_cred_update(%struct.TYPE_6__*, i64) #1

declare dso_local %struct.wpabuf* @wps_build_ap_cred(%struct.wps_data*) #1

declare dso_local i32* @wpabuf_head(%struct.wpabuf*) #1

declare dso_local i64 @wpabuf_len(%struct.wpabuf*) #1

declare dso_local i32 @wpabuf_free(%struct.wpabuf*) #1

declare dso_local i32 @wps_sta_cred_cb(%struct.wps_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

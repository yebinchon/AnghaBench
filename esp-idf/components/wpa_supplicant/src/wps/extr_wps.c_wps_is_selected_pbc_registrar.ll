; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/wps/extr_wps.c_wps_is_selected_pbc_registrar.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/wps/extr_wps.c_wps_is_selected_pbc_registrar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }
%struct.wps_sm = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.wps_parse_attr = type { i64*, i32 }

@WPS_MAX_DIS_AP_NUM = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"discard ap bssid[%02x:%02x:%02x:%02x:%02x:%02x]\0A\00", align 1
@DEV_PW_PUSHBUTTON = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wps_is_selected_pbc_registrar(%struct.wpabuf* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wpabuf*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.wps_sm*, align 8
  %7 = alloca %struct.wps_parse_attr*, align 8
  %8 = alloca i32, align 4
  store %struct.wpabuf* %0, %struct.wpabuf** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = call %struct.wps_sm* (...) @wps_sm_get()
  store %struct.wps_sm* %9, %struct.wps_sm** %6, align 8
  %10 = call i64 @os_zalloc(i32 16)
  %11 = inttoptr i64 %10 to %struct.wps_parse_attr*
  store %struct.wps_parse_attr* %11, %struct.wps_parse_attr** %7, align 8
  store i32 0, i32* %8, align 4
  %12 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %13 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %7, align 8
  %14 = call i64 @wps_parse_msg(%struct.wpabuf* %12, %struct.wps_parse_attr* %13)
  %15 = icmp slt i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %7, align 8
  %18 = call i32 @os_free(%struct.wps_parse_attr* %17)
  store i32 0, i32* %3, align 4
  br label %102

19:                                               ; preds = %2
  %20 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %7, align 8
  %21 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %20, i32 0, i32 0
  %22 = load i64*, i64** %21, align 8
  %23 = icmp ne i64* %22, null
  br i1 %23, label %24, label %30

24:                                               ; preds = %19
  %25 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %7, align 8
  %26 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %25, i32 0, i32 0
  %27 = load i64*, i64** %26, align 8
  %28 = load i64, i64* %27, align 8
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %84

30:                                               ; preds = %24, %19
  %31 = load %struct.wps_sm*, %struct.wps_sm** %6, align 8
  %32 = getelementptr inbounds %struct.wps_sm, %struct.wps_sm* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %7, align 8
  %37 = call i32 @os_free(%struct.wps_parse_attr* %36)
  store i32 0, i32* %3, align 4
  br label %102

38:                                               ; preds = %30
  store i32 0, i32* %8, align 4
  br label %39

39:                                               ; preds = %79, %38
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* @WPS_MAX_DIS_AP_NUM, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %82

43:                                               ; preds = %39
  %44 = load %struct.wps_sm*, %struct.wps_sm** %6, align 8
  %45 = getelementptr inbounds %struct.wps_sm, %struct.wps_sm* %44, i32 0, i32 1
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = load i32, i32* %8, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32*, i32** %5, align 8
  %53 = call i64 @os_memcmp(i32 %51, i32* %52, i32 6)
  %54 = icmp eq i64 0, %53
  br i1 %54, label %55, label %78

55:                                               ; preds = %43
  %56 = load i32, i32* @MSG_DEBUG, align 4
  %57 = load i32*, i32** %5, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32*, i32** %5, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 1
  %62 = load i32, i32* %61, align 4
  %63 = load i32*, i32** %5, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 2
  %65 = load i32, i32* %64, align 4
  %66 = load i32*, i32** %5, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 3
  %68 = load i32, i32* %67, align 4
  %69 = load i32*, i32** %5, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 4
  %71 = load i32, i32* %70, align 4
  %72 = load i32*, i32** %5, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 5
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @wpa_printf(i32 %56, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %59, i32 %62, i32 %65, i32 %68, i32 %71, i32 %74)
  %76 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %7, align 8
  %77 = call i32 @os_free(%struct.wps_parse_attr* %76)
  store i32 0, i32* %3, align 4
  br label %102

78:                                               ; preds = %43
  br label %79

79:                                               ; preds = %78
  %80 = load i32, i32* %8, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %8, align 4
  br label %39

82:                                               ; preds = %39
  br label %83

83:                                               ; preds = %82
  br label %84

84:                                               ; preds = %83, %24
  %85 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %7, align 8
  %86 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %96

89:                                               ; preds = %84
  %90 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %7, align 8
  %91 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = call i64 @WPA_GET_BE16(i32 %92)
  %94 = load i64, i64* @DEV_PW_PUSHBUTTON, align 8
  %95 = icmp ne i64 %93, %94
  br i1 %95, label %96, label %99

96:                                               ; preds = %89, %84
  %97 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %7, align 8
  %98 = call i32 @os_free(%struct.wps_parse_attr* %97)
  store i32 0, i32* %3, align 4
  br label %102

99:                                               ; preds = %89
  %100 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %7, align 8
  %101 = call i32 @os_free(%struct.wps_parse_attr* %100)
  store i32 1, i32* %3, align 4
  br label %102

102:                                              ; preds = %99, %96, %55, %35, %16
  %103 = load i32, i32* %3, align 4
  ret i32 %103
}

declare dso_local %struct.wps_sm* @wps_sm_get(...) #1

declare dso_local i64 @os_zalloc(i32) #1

declare dso_local i64 @wps_parse_msg(%struct.wpabuf*, %struct.wps_parse_attr*) #1

declare dso_local i32 @os_free(%struct.wps_parse_attr*) #1

declare dso_local i64 @os_memcmp(i32, i32*, i32) #1

declare dso_local i32 @wpa_printf(i32, i8*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i64 @WPA_GET_BE16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

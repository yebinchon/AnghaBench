; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/esp_supplicant/extr_esp_wps.c_wps_parse_scan_result.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/esp_supplicant/extr_esp_wps.c_wps_parse_scan_result.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wps_sm = type { i32, i8*, i32, i64, %struct.TYPE_2__, i64, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.wps_scan_ie = type { i8*, i32, i32, i64*, i32, i32, i64* }
%struct.wpabuf = type { i32 }

@gWpsSm = common dso_local global %struct.wps_sm* null, align 8
@WPS_TYPE_DISABLE = common dso_local global i64 0, align 8
@WPS_STATUS_DISABLE = common dso_local global i64 0, align 8
@WPS_STATUS_SCANNING = common dso_local global i64 0, align 8
@WIFI_MODE_STA = common dso_local global i64 0, align 8
@WIFI_MODE_APSTA = common dso_local global i64 0, align 8
@ETH_ALEN = common dso_local global i64 0, align 8
@WIFI_CAPINFO_PRIVACY = common dso_local global i32 0, align 4
@MSG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"WEP not suppported in WPS\00", align 1
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"wps discover [%s]\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wps_scan_ie*)* @wps_parse_scan_result to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wps_parse_scan_result(%struct.wps_scan_ie* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.wps_scan_ie*, align 8
  %4 = alloca %struct.wps_sm*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.wpabuf*, align 8
  store %struct.wps_scan_ie* %0, %struct.wps_scan_ie** %3, align 8
  %7 = load %struct.wps_sm*, %struct.wps_sm** @gWpsSm, align 8
  store %struct.wps_sm* %7, %struct.wps_sm** %4, align 8
  store i64 0, i64* %5, align 8
  %8 = call i64 (...) @wps_get_type()
  %9 = load i64, i64* @WPS_TYPE_DISABLE, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %19, label %11

11:                                               ; preds = %1
  %12 = call i64 (...) @wps_get_status()
  %13 = load i64, i64* @WPS_STATUS_DISABLE, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %20

15:                                               ; preds = %11
  %16 = call i64 (...) @wps_get_status()
  %17 = load i64, i64* @WPS_STATUS_SCANNING, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %15, %1
  store i32 0, i32* %2, align 4
  br label %185

20:                                               ; preds = %15, %11
  %21 = call i32 @esp_wifi_get_mode(i64* %5)
  %22 = load i64, i64* %5, align 8
  %23 = load i64, i64* @WIFI_MODE_STA, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %29, label %25

25:                                               ; preds = %20
  %26 = load i64, i64* %5, align 8
  %27 = load i64, i64* @WIFI_MODE_APSTA, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %184

29:                                               ; preds = %25, %20
  %30 = load %struct.wps_scan_ie*, %struct.wps_scan_ie** %3, align 8
  %31 = getelementptr inbounds %struct.wps_scan_ie, %struct.wps_scan_ie* %30, i32 0, i32 6
  %32 = load i64*, i64** %31, align 8
  %33 = icmp ne i64* %32, null
  br i1 %33, label %34, label %184

34:                                               ; preds = %29
  %35 = load %struct.wps_scan_ie*, %struct.wps_scan_ie** %3, align 8
  %36 = getelementptr inbounds %struct.wps_scan_ie, %struct.wps_scan_ie* %35, i32 0, i32 6
  %37 = load i64*, i64** %36, align 8
  %38 = getelementptr inbounds i64, i64* %37, i64 6
  %39 = load %struct.wps_scan_ie*, %struct.wps_scan_ie** %3, align 8
  %40 = getelementptr inbounds %struct.wps_scan_ie, %struct.wps_scan_ie* %39, i32 0, i32 6
  %41 = load i64*, i64** %40, align 8
  %42 = getelementptr inbounds i64, i64* %41, i64 1
  %43 = load i64, i64* %42, align 8
  %44 = sub nsw i64 %43, 4
  %45 = call %struct.wpabuf* @wpabuf_alloc_copy(i64* %38, i64 %44)
  store %struct.wpabuf* %45, %struct.wpabuf** %6, align 8
  %46 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %47 = load %struct.wps_scan_ie*, %struct.wps_scan_ie** %3, align 8
  %48 = getelementptr inbounds %struct.wps_scan_ie, %struct.wps_scan_ie* %47, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  %50 = call i64 @wps_is_selected_pbc_registrar(%struct.wpabuf* %46, i8* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %59, label %52

52:                                               ; preds = %34
  %53 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %54 = load %struct.wps_scan_ie*, %struct.wps_scan_ie** %3, align 8
  %55 = getelementptr inbounds %struct.wps_scan_ie, %struct.wps_scan_ie* %54, i32 0, i32 0
  %56 = load i8*, i8** %55, align 8
  %57 = call i64 @wps_is_selected_pin_registrar(%struct.wpabuf* %53, i8* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %181

59:                                               ; preds = %52, %34
  %60 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %61 = call i32 @wpabuf_free(%struct.wpabuf* %60)
  %62 = load %struct.wps_sm*, %struct.wps_sm** %4, align 8
  %63 = getelementptr inbounds %struct.wps_sm, %struct.wps_sm* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %59
  store i32 0, i32* %2, align 4
  br label %185

67:                                               ; preds = %59
  %68 = load %struct.wps_sm*, %struct.wps_sm** %4, align 8
  %69 = getelementptr inbounds %struct.wps_sm, %struct.wps_sm* %68, i32 0, i32 4
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.wps_scan_ie*, %struct.wps_scan_ie** %3, align 8
  %73 = getelementptr inbounds %struct.wps_scan_ie, %struct.wps_scan_ie* %72, i32 0, i32 0
  %74 = load i8*, i8** %73, align 8
  %75 = load i64, i64* @ETH_ALEN, align 8
  %76 = call i64 @memcmp(i32 %71, i8* %74, i64 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %67
  %79 = load %struct.wps_sm*, %struct.wps_sm** %4, align 8
  %80 = getelementptr inbounds %struct.wps_sm, %struct.wps_sm* %79, i32 0, i32 7
  %81 = load i32, i32* %80, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %80, align 4
  br label %83

83:                                               ; preds = %78, %67
  %84 = load %struct.wps_scan_ie*, %struct.wps_scan_ie** %3, align 8
  %85 = getelementptr inbounds %struct.wps_scan_ie, %struct.wps_scan_ie* %84, i32 0, i32 5
  %86 = load i32, i32* %85, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %103, label %88

88:                                               ; preds = %83
  %89 = load %struct.wps_scan_ie*, %struct.wps_scan_ie** %3, align 8
  %90 = getelementptr inbounds %struct.wps_scan_ie, %struct.wps_scan_ie* %89, i32 0, i32 4
  %91 = load i32, i32* %90, align 8
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %103, label %93

93:                                               ; preds = %88
  %94 = load %struct.wps_scan_ie*, %struct.wps_scan_ie** %3, align 8
  %95 = getelementptr inbounds %struct.wps_scan_ie, %struct.wps_scan_ie* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* @WIFI_CAPINFO_PRIVACY, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %93
  %101 = load i32, i32* @MSG_ERROR, align 4
  %102 = call i32 (i32, i8*, ...) @wpa_printf(i32 %101, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %185

103:                                              ; preds = %93, %88, %83
  %104 = call i32 (...) @esp_wifi_enable_sta_privacy_internal()
  %105 = load %struct.wps_sm*, %struct.wps_sm** %4, align 8
  %106 = getelementptr inbounds %struct.wps_sm, %struct.wps_sm* %105, i32 0, i32 1
  %107 = load i8*, i8** %106, align 8
  %108 = call i32 @os_bzero(i8* %107, i32 8)
  %109 = load %struct.wps_sm*, %struct.wps_sm** %4, align 8
  %110 = getelementptr inbounds %struct.wps_sm, %struct.wps_sm* %109, i32 0, i32 1
  %111 = load i8*, i8** %110, align 8
  %112 = load %struct.wps_scan_ie*, %struct.wps_scan_ie** %3, align 8
  %113 = getelementptr inbounds %struct.wps_scan_ie, %struct.wps_scan_ie* %112, i32 0, i32 3
  %114 = load i64*, i64** %113, align 8
  %115 = getelementptr inbounds i64, i64* %114, i64 2
  %116 = bitcast i64* %115 to i8*
  %117 = load %struct.wps_scan_ie*, %struct.wps_scan_ie** %3, align 8
  %118 = getelementptr inbounds %struct.wps_scan_ie, %struct.wps_scan_ie* %117, i32 0, i32 3
  %119 = load i64*, i64** %118, align 8
  %120 = getelementptr inbounds i64, i64* %119, i64 1
  %121 = load i64, i64* %120, align 8
  %122 = trunc i64 %121 to i32
  %123 = call i32 @strncpy(i8* %111, i8* %116, i32 %122)
  %124 = load %struct.wps_scan_ie*, %struct.wps_scan_ie** %3, align 8
  %125 = getelementptr inbounds %struct.wps_scan_ie, %struct.wps_scan_ie* %124, i32 0, i32 3
  %126 = load i64*, i64** %125, align 8
  %127 = getelementptr inbounds i64, i64* %126, i64 1
  %128 = load i64, i64* %127, align 8
  %129 = load %struct.wps_sm*, %struct.wps_sm** %4, align 8
  %130 = getelementptr inbounds %struct.wps_sm, %struct.wps_sm* %129, i32 0, i32 3
  store i64 %128, i64* %130, align 8
  %131 = load %struct.wps_scan_ie*, %struct.wps_scan_ie** %3, align 8
  %132 = getelementptr inbounds %struct.wps_scan_ie, %struct.wps_scan_ie* %131, i32 0, i32 0
  %133 = load i8*, i8** %132, align 8
  %134 = icmp ne i8* %133, null
  br i1 %134, label %135, label %156

135:                                              ; preds = %103
  %136 = load %struct.wps_sm*, %struct.wps_sm** @gWpsSm, align 8
  %137 = getelementptr inbounds %struct.wps_sm, %struct.wps_sm* %136, i32 0, i32 6
  %138 = load i32, i32* %137, align 8
  %139 = load %struct.wps_scan_ie*, %struct.wps_scan_ie** %3, align 8
  %140 = getelementptr inbounds %struct.wps_scan_ie, %struct.wps_scan_ie* %139, i32 0, i32 0
  %141 = load i8*, i8** %140, align 8
  %142 = load i64, i64* @ETH_ALEN, align 8
  %143 = call i32 @memcpy(i32 %138, i8* %141, i64 %142)
  %144 = load %struct.wps_sm*, %struct.wps_sm** %4, align 8
  %145 = getelementptr inbounds %struct.wps_sm, %struct.wps_sm* %144, i32 0, i32 4
  %146 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 8
  %148 = load %struct.wps_scan_ie*, %struct.wps_scan_ie** %3, align 8
  %149 = getelementptr inbounds %struct.wps_scan_ie, %struct.wps_scan_ie* %148, i32 0, i32 0
  %150 = load i8*, i8** %149, align 8
  %151 = load i64, i64* @ETH_ALEN, align 8
  %152 = call i32 @memcpy(i32 %147, i8* %150, i64 %151)
  %153 = load %struct.wps_sm*, %struct.wps_sm** %4, align 8
  %154 = getelementptr inbounds %struct.wps_sm, %struct.wps_sm* %153, i32 0, i32 4
  %155 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %154, i32 0, i32 0
  store i32 1, i32* %155, align 8
  br label %157

156:                                              ; preds = %103
  br label %157

157:                                              ; preds = %156, %135
  %158 = load i32, i32* @MSG_DEBUG, align 4
  %159 = load %struct.wps_sm*, %struct.wps_sm** %4, align 8
  %160 = getelementptr inbounds %struct.wps_sm, %struct.wps_sm* %159, i32 0, i32 1
  %161 = load i8*, i8** %160, align 8
  %162 = call i32 (i32, i8*, ...) @wpa_printf(i32 %158, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8* %161)
  %163 = load %struct.wps_sm*, %struct.wps_sm** %4, align 8
  %164 = getelementptr inbounds %struct.wps_sm, %struct.wps_sm* %163, i32 0, i32 5
  store i64 0, i64* %164, align 8
  %165 = load %struct.wps_sm*, %struct.wps_sm** %4, align 8
  %166 = getelementptr inbounds %struct.wps_sm, %struct.wps_sm* %165, i32 0, i32 4
  %167 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 4
  %169 = load %struct.wps_sm*, %struct.wps_sm** %4, align 8
  %170 = getelementptr inbounds %struct.wps_sm, %struct.wps_sm* %169, i32 0, i32 1
  %171 = load i8*, i8** %170, align 8
  %172 = load %struct.wps_sm*, %struct.wps_sm** %4, align 8
  %173 = getelementptr inbounds %struct.wps_sm, %struct.wps_sm* %172, i32 0, i32 3
  %174 = load i64, i64* %173, align 8
  %175 = call i32 @memcpy(i32 %168, i8* %171, i64 %174)
  %176 = load %struct.wps_scan_ie*, %struct.wps_scan_ie** %3, align 8
  %177 = getelementptr inbounds %struct.wps_scan_ie, %struct.wps_scan_ie* %176, i32 0, i32 2
  %178 = load i32, i32* %177, align 4
  %179 = load %struct.wps_sm*, %struct.wps_sm** %4, align 8
  %180 = getelementptr inbounds %struct.wps_sm, %struct.wps_sm* %179, i32 0, i32 2
  store i32 %178, i32* %180, align 8
  store i32 1, i32* %2, align 4
  br label %185

181:                                              ; preds = %52
  %182 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %183 = call i32 @wpabuf_free(%struct.wpabuf* %182)
  br label %184

184:                                              ; preds = %181, %29, %25
  store i32 0, i32* %2, align 4
  br label %185

185:                                              ; preds = %184, %157, %100, %66, %19
  %186 = load i32, i32* %2, align 4
  ret i32 %186
}

declare dso_local i64 @wps_get_type(...) #1

declare dso_local i64 @wps_get_status(...) #1

declare dso_local i32 @esp_wifi_get_mode(i64*) #1

declare dso_local %struct.wpabuf* @wpabuf_alloc_copy(i64*, i64) #1

declare dso_local i64 @wps_is_selected_pbc_registrar(%struct.wpabuf*, i8*) #1

declare dso_local i64 @wps_is_selected_pin_registrar(%struct.wpabuf*, i8*) #1

declare dso_local i32 @wpabuf_free(%struct.wpabuf*) #1

declare dso_local i64 @memcmp(i32, i8*, i64) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32 @esp_wifi_enable_sta_privacy_internal(...) #1

declare dso_local i32 @os_bzero(i8*, i32) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

declare dso_local i32 @memcpy(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

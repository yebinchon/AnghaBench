; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/wps/extr_wps_registrar.c_wps_process_wsc_nack.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/wps/extr_wps_registrar.c_wps_process_wsc_nack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wps_data = type { i32, i32, %struct.TYPE_2__*, i32, i32, i64 }
%struct.TYPE_2__ = type { i64 }
%struct.wpabuf = type { i32 }
%struct.wps_parse_attr = type { i64*, i32*, i32*, i32* }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"WPS: Received WSC_NACK\00", align 1
@SEND_WSC_NACK = common dso_local global i32 0, align 4
@WPS_FAILURE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"WPS: No Message Type attribute\00", align 1
@WPS_WSC_NACK = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [29 x i8] c"WPS: Invalid Message Type %d\00", align 1
@WPS_NONCE_LEN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"WPS: Mismatch in registrar nonce\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"WPS: Mismatch in enrollee nonce\00", align 1
@.str.5 = private unnamed_addr constant [50 x i8] c"WPS: No Configuration Error attribute in WSC_NACK\00", align 1
@.str.6 = private unnamed_addr constant [65 x i8] c"WPS: Enrollee terminated negotiation with Configuration Error %d\00", align 1
@WPS_M2 = common dso_local global i32 0, align 4
@WPS_M4 = common dso_local global i32 0, align 4
@WPS_M6 = common dso_local global i32 0, align 4
@WPS_M8 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wps_data*, %struct.wpabuf*)* @wps_process_wsc_nack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wps_process_wsc_nack(%struct.wps_data* %0, %struct.wpabuf* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wps_data*, align 8
  %5 = alloca %struct.wpabuf*, align 8
  %6 = alloca %struct.wps_parse_attr, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.wps_data* %0, %struct.wps_data** %4, align 8
  store %struct.wpabuf* %1, %struct.wpabuf** %5, align 8
  %9 = load i32, i32* @MSG_DEBUG, align 4
  %10 = call i32 (i32, i8*, ...) @wpa_printf(i32 %9, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %12 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* @SEND_WSC_NACK, align 4
  %15 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %16 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 8
  %17 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %18 = call i64 @wps_parse_msg(%struct.wpabuf* %17, %struct.wps_parse_attr* %6)
  %19 = icmp slt i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = load i32, i32* @WPS_FAILURE, align 4
  store i32 %21, i32* %3, align 4
  br label %136

22:                                               ; preds = %2
  %23 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %6, i32 0, i32 0
  %24 = load i64*, i64** %23, align 8
  %25 = icmp eq i64* %24, null
  br i1 %25, label %26, label %30

26:                                               ; preds = %22
  %27 = load i32, i32* @MSG_DEBUG, align 4
  %28 = call i32 (i32, i8*, ...) @wpa_printf(i32 %27, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %29 = load i32, i32* @WPS_FAILURE, align 4
  store i32 %29, i32* %3, align 4
  br label %136

30:                                               ; preds = %22
  %31 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %6, i32 0, i32 0
  %32 = load i64*, i64** %31, align 8
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @WPS_WSC_NACK, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %43

36:                                               ; preds = %30
  %37 = load i32, i32* @MSG_DEBUG, align 4
  %38 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %6, i32 0, i32 0
  %39 = load i64*, i64** %38, align 8
  %40 = load i64, i64* %39, align 8
  %41 = call i32 (i32, i8*, ...) @wpa_printf(i32 %37, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i64 %40)
  %42 = load i32, i32* @WPS_FAILURE, align 4
  store i32 %42, i32* %3, align 4
  br label %136

43:                                               ; preds = %30
  %44 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %6, i32 0, i32 3
  %45 = load i32*, i32** %44, align 8
  %46 = icmp eq i32* %45, null
  br i1 %46, label %56, label %47

47:                                               ; preds = %43
  %48 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %49 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 4
  %51 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %6, i32 0, i32 3
  %52 = load i32*, i32** %51, align 8
  %53 = load i32, i32* @WPS_NONCE_LEN, align 4
  %54 = call i64 @os_memcmp(i32 %50, i32* %52, i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %47, %43
  %57 = load i32, i32* @MSG_DEBUG, align 4
  %58 = call i32 (i32, i8*, ...) @wpa_printf(i32 %57, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  %59 = load i32, i32* @WPS_FAILURE, align 4
  store i32 %59, i32* %3, align 4
  br label %136

60:                                               ; preds = %47
  %61 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %6, i32 0, i32 2
  %62 = load i32*, i32** %61, align 8
  %63 = icmp eq i32* %62, null
  br i1 %63, label %73, label %64

64:                                               ; preds = %60
  %65 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %66 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 8
  %68 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %6, i32 0, i32 2
  %69 = load i32*, i32** %68, align 8
  %70 = load i32, i32* @WPS_NONCE_LEN, align 4
  %71 = call i64 @os_memcmp(i32 %67, i32* %69, i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %64, %60
  %74 = load i32, i32* @MSG_DEBUG, align 4
  %75 = call i32 (i32, i8*, ...) @wpa_printf(i32 %74, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0))
  %76 = load i32, i32* @WPS_FAILURE, align 4
  store i32 %76, i32* %3, align 4
  br label %136

77:                                               ; preds = %64
  %78 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %6, i32 0, i32 1
  %79 = load i32*, i32** %78, align 8
  %80 = icmp eq i32* %79, null
  br i1 %80, label %81, label %85

81:                                               ; preds = %77
  %82 = load i32, i32* @MSG_DEBUG, align 4
  %83 = call i32 (i32, i8*, ...) @wpa_printf(i32 %82, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.5, i64 0, i64 0))
  %84 = load i32, i32* @WPS_FAILURE, align 4
  store i32 %84, i32* %3, align 4
  br label %136

85:                                               ; preds = %77
  %86 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %6, i32 0, i32 1
  %87 = load i32*, i32** %86, align 8
  %88 = call i64 @WPA_GET_BE16(i32* %87)
  store i64 %88, i64* %8, align 8
  %89 = load i32, i32* @MSG_DEBUG, align 4
  %90 = load i64, i64* %8, align 8
  %91 = call i32 (i32, i8*, ...) @wpa_printf(i32 %89, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.6, i64 0, i64 0), i64 %90)
  %92 = load i32, i32* %7, align 4
  switch i32 %92, label %133 [
    i32 130, label %93
    i32 129, label %103
    i32 128, label %113
    i32 131, label %123
  ]

93:                                               ; preds = %85
  %94 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %95 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %94, i32 0, i32 2
  %96 = load %struct.TYPE_2__*, %struct.TYPE_2__** %95, align 8
  %97 = load i32, i32* @WPS_M2, align 4
  %98 = load i64, i64* %8, align 8
  %99 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %100 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @wps_fail_event(%struct.TYPE_2__* %96, i32 %97, i64 %98, i32 %101)
  br label %134

103:                                              ; preds = %85
  %104 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %105 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %104, i32 0, i32 2
  %106 = load %struct.TYPE_2__*, %struct.TYPE_2__** %105, align 8
  %107 = load i32, i32* @WPS_M4, align 4
  %108 = load i64, i64* %8, align 8
  %109 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %110 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @wps_fail_event(%struct.TYPE_2__* %106, i32 %107, i64 %108, i32 %111)
  br label %134

113:                                              ; preds = %85
  %114 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %115 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %114, i32 0, i32 2
  %116 = load %struct.TYPE_2__*, %struct.TYPE_2__** %115, align 8
  %117 = load i32, i32* @WPS_M6, align 4
  %118 = load i64, i64* %8, align 8
  %119 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %120 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @wps_fail_event(%struct.TYPE_2__* %116, i32 %117, i64 %118, i32 %121)
  br label %134

123:                                              ; preds = %85
  %124 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %125 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %124, i32 0, i32 2
  %126 = load %struct.TYPE_2__*, %struct.TYPE_2__** %125, align 8
  %127 = load i32, i32* @WPS_M8, align 4
  %128 = load i64, i64* %8, align 8
  %129 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %130 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @wps_fail_event(%struct.TYPE_2__* %126, i32 %127, i64 %128, i32 %131)
  br label %134

133:                                              ; preds = %85
  br label %134

134:                                              ; preds = %133, %123, %113, %103, %93
  %135 = load i32, i32* @WPS_FAILURE, align 4
  store i32 %135, i32* %3, align 4
  br label %136

136:                                              ; preds = %134, %81, %73, %56, %36, %26, %20
  %137 = load i32, i32* %3, align 4
  ret i32 %137
}

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i64 @wps_parse_msg(%struct.wpabuf*, %struct.wps_parse_attr*) #1

declare dso_local i64 @os_memcmp(i32, i32*, i32) #1

declare dso_local i64 @WPA_GET_BE16(i32*) #1

declare dso_local i32 @wps_fail_event(%struct.TYPE_2__*, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/wps/extr_wps_validate.c_wps_validate_m7_encr.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/wps/extr_wps_validate.c_wps_validate_m7_encr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }
%struct.wps_parse_attr = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@MSG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"WPS-STRICT: No TLVs in M7 encrypted settings\00", align 1
@.str.1 = private unnamed_addr constant [64 x i8] c"WPS-STRICT: Failed to parse attributes in M7 encrypted settings\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"WPS-STRICT: Invalid M7 encrypted settings\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wps_validate_m7_encr(%struct.wpabuf* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.wpabuf*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.wps_parse_attr*, align 8
  %8 = alloca i32, align 4
  store %struct.wpabuf* %0, %struct.wpabuf** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = call i64 @os_zalloc(i32 40)
  %10 = inttoptr i64 %9 to %struct.wps_parse_attr*
  store %struct.wps_parse_attr* %10, %struct.wps_parse_attr** %7, align 8
  %11 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %7, align 8
  %12 = icmp eq %struct.wps_parse_attr* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  store i32 -99, i32* %8, align 4
  br label %109

14:                                               ; preds = %3
  %15 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %16 = icmp eq %struct.wpabuf* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %14
  %18 = load i32, i32* @MSG_INFO, align 4
  %19 = call i32 @wpa_printf(i32 %18, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %8, align 4
  br label %109

20:                                               ; preds = %14
  %21 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %22 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %7, align 8
  %23 = call i64 @wps_parse_msg(%struct.wpabuf* %21, %struct.wps_parse_attr* %22)
  %24 = icmp slt i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %20
  %26 = load i32, i32* @MSG_INFO, align 4
  %27 = call i32 @wpa_printf(i32 %26, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %8, align 4
  br label %109

28:                                               ; preds = %20
  %29 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %7, align 8
  %30 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %29, i32 0, i32 9
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @wps_validate_e_snonce2(i32 %31, i32 1)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %105, label %34

34:                                               ; preds = %28
  %35 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %7, align 8
  %36 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %35, i32 0, i32 8
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %7, align 8
  %39 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %38, i32 0, i32 7
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %5, align 4
  %42 = icmp ne i32 %41, 0
  %43 = xor i1 %42, true
  %44 = zext i1 %43 to i32
  %45 = call i64 @wps_validate_ssid(i32 %37, i32 %40, i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %105, label %47

47:                                               ; preds = %34
  %48 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %7, align 8
  %49 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %48, i32 0, i32 6
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %5, align 4
  %52 = icmp ne i32 %51, 0
  %53 = xor i1 %52, true
  %54 = zext i1 %53 to i32
  %55 = call i64 @wps_validate_mac_addr(i32 %50, i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %105, label %57

57:                                               ; preds = %47
  %58 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %7, align 8
  %59 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %58, i32 0, i32 5
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %5, align 4
  %62 = icmp ne i32 %61, 0
  %63 = xor i1 %62, true
  %64 = zext i1 %63 to i32
  %65 = call i64 @wps_validate_auth_type(i32 %60, i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %105, label %67

67:                                               ; preds = %57
  %68 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %7, align 8
  %69 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* %5, align 4
  %72 = icmp ne i32 %71, 0
  %73 = xor i1 %72, true
  %74 = zext i1 %73 to i32
  %75 = call i64 @wps_validate_encr_type(i32 %70, i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %105, label %77

77:                                               ; preds = %67
  %78 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %7, align 8
  %79 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %78, i32 0, i32 4
  %80 = load i32, i32* %79, align 4
  %81 = call i64 @wps_validate_network_key_index(i32 %80, i32 0)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %105, label %83

83:                                               ; preds = %77
  %84 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %7, align 8
  %85 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %7, align 8
  %88 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %7, align 8
  %91 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* %5, align 4
  %94 = icmp ne i32 %93, 0
  %95 = xor i1 %94, true
  %96 = zext i1 %95 to i32
  %97 = call i64 @wps_validate_network_key(i32 %86, i32 %89, i32 %92, i32 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %105, label %99

99:                                               ; preds = %83
  %100 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %7, align 8
  %101 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = call i64 @wps_validate_key_wrap_auth(i32 %102, i32 1)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %99, %83, %77, %67, %57, %47, %34, %28
  %106 = load i32, i32* @MSG_INFO, align 4
  %107 = call i32 @wpa_printf(i32 %106, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %8, align 4
  br label %109

108:                                              ; preds = %99
  store i32 0, i32* %8, align 4
  br label %109

109:                                              ; preds = %108, %105, %25, %17, %13
  %110 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %7, align 8
  %111 = icmp ne %struct.wps_parse_attr* %110, null
  br i1 %111, label %112, label %115

112:                                              ; preds = %109
  %113 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %7, align 8
  %114 = call i32 @os_free(%struct.wps_parse_attr* %113)
  br label %115

115:                                              ; preds = %112, %109
  %116 = load i32, i32* %8, align 4
  ret i32 %116
}

declare dso_local i64 @os_zalloc(i32) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i64 @wps_parse_msg(%struct.wpabuf*, %struct.wps_parse_attr*) #1

declare dso_local i64 @wps_validate_e_snonce2(i32, i32) #1

declare dso_local i64 @wps_validate_ssid(i32, i32, i32) #1

declare dso_local i64 @wps_validate_mac_addr(i32, i32) #1

declare dso_local i64 @wps_validate_auth_type(i32, i32) #1

declare dso_local i64 @wps_validate_encr_type(i32, i32) #1

declare dso_local i64 @wps_validate_network_key_index(i32, i32) #1

declare dso_local i64 @wps_validate_network_key(i32, i32, i32, i32) #1

declare dso_local i64 @wps_validate_key_wrap_auth(i32, i32) #1

declare dso_local i32 @os_free(%struct.wps_parse_attr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

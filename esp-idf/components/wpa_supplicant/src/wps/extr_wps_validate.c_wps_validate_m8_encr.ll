; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/wps/extr_wps_validate.c_wps_validate_m8_encr.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/wps/extr_wps_validate.c_wps_validate_m8_encr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }
%struct.wps_parse_attr = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@MSG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"WPS-STRICT: No TLVs in M8 encrypted settings\00", align 1
@.str.1 = private unnamed_addr constant [64 x i8] c"WPS-STRICT: Failed to parse attributes in M8 encrypted settings\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"WPS-STRICT: Invalid M8 encrypted settings\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wps_validate_m8_encr(%struct.wpabuf* %0, i32 %1, i32 %2) #0 {
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
  br label %91

14:                                               ; preds = %3
  %15 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %16 = icmp eq %struct.wpabuf* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %14
  %18 = load i32, i32* @MSG_INFO, align 4
  %19 = call i32 @wpa_printf(i32 %18, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %8, align 4
  br label %91

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
  br label %91

28:                                               ; preds = %20
  %29 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %7, align 8
  %30 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %29, i32 0, i32 9
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %7, align 8
  %33 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %32, i32 0, i32 8
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %5, align 4
  %36 = call i64 @wps_validate_ssid(i32 %31, i32 %34, i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %87, label %38

38:                                               ; preds = %28
  %39 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %7, align 8
  %40 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %39, i32 0, i32 7
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %5, align 4
  %43 = call i64 @wps_validate_auth_type(i32 %41, i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %87, label %45

45:                                               ; preds = %38
  %46 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %7, align 8
  %47 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %46, i32 0, i32 6
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %5, align 4
  %50 = call i64 @wps_validate_encr_type(i32 %48, i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %87, label %52

52:                                               ; preds = %45
  %53 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %7, align 8
  %54 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %53, i32 0, i32 5
  %55 = load i32, i32* %54, align 4
  %56 = call i64 @wps_validate_network_key_index(i32 %55, i32 0)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %87, label %58

58:                                               ; preds = %52
  %59 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %7, align 8
  %60 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %59, i32 0, i32 4
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %5, align 4
  %63 = call i64 @wps_validate_mac_addr(i32 %61, i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %87, label %65

65:                                               ; preds = %58
  %66 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %7, align 8
  %67 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %7, align 8
  %70 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %7, align 8
  %73 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* %5, align 4
  %76 = icmp ne i32 %75, 0
  %77 = xor i1 %76, true
  %78 = zext i1 %77 to i32
  %79 = call i64 @wps_validate_credential(i32 %68, i32 %71, i32 %74, i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %87, label %81

81:                                               ; preds = %65
  %82 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %7, align 8
  %83 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i64 @wps_validate_key_wrap_auth(i32 %84, i32 1)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %81, %65, %58, %52, %45, %38, %28
  %88 = load i32, i32* @MSG_INFO, align 4
  %89 = call i32 @wpa_printf(i32 %88, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %8, align 4
  br label %91

90:                                               ; preds = %81
  store i32 0, i32* %8, align 4
  br label %91

91:                                               ; preds = %90, %87, %25, %17, %13
  %92 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %7, align 8
  %93 = icmp ne %struct.wps_parse_attr* %92, null
  br i1 %93, label %94, label %97

94:                                               ; preds = %91
  %95 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %7, align 8
  %96 = call i32 @os_free(%struct.wps_parse_attr* %95)
  br label %97

97:                                               ; preds = %94, %91
  %98 = load i32, i32* %8, align 4
  ret i32 %98
}

declare dso_local i64 @os_zalloc(i32) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i64 @wps_parse_msg(%struct.wpabuf*, %struct.wps_parse_attr*) #1

declare dso_local i64 @wps_validate_ssid(i32, i32, i32) #1

declare dso_local i64 @wps_validate_auth_type(i32, i32) #1

declare dso_local i64 @wps_validate_encr_type(i32, i32) #1

declare dso_local i64 @wps_validate_network_key_index(i32, i32) #1

declare dso_local i64 @wps_validate_mac_addr(i32, i32) #1

declare dso_local i64 @wps_validate_credential(i32, i32, i32, i32) #1

declare dso_local i64 @wps_validate_key_wrap_auth(i32, i32) #1

declare dso_local i32 @os_free(%struct.wps_parse_attr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/wps/extr_wps_validate.c_wps_validate_cred.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/wps/extr_wps_validate.c_wps_validate_cred.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wps_parse_attr = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.wpabuf = type { i32 }

@MSG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"WPS-STRICT: Failed to parse Credential\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"WPS-STRICT: Invalid Credential\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64)* @wps_validate_cred to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wps_validate_cred(i32* %0, i64 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.wps_parse_attr*, align 8
  %6 = alloca %struct.wpabuf, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = call i64 @os_zalloc(i32 40)
  %9 = inttoptr i64 %8 to %struct.wps_parse_attr*
  store %struct.wps_parse_attr* %9, %struct.wps_parse_attr** %5, align 8
  %10 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %5, align 8
  %11 = icmp eq %struct.wps_parse_attr* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 -99, i32* %7, align 4
  br label %88

13:                                               ; preds = %2
  %14 = load i32*, i32** %3, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %13
  store i32 -1, i32* %7, align 4
  br label %88

17:                                               ; preds = %13
  %18 = load i32*, i32** %3, align 8
  %19 = load i64, i64* %4, align 8
  %20 = call i32 @wpabuf_set(%struct.wpabuf* %6, i32* %18, i64 %19)
  %21 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %5, align 8
  %22 = call i64 @wps_parse_msg(%struct.wpabuf* %6, %struct.wps_parse_attr* %21)
  %23 = icmp slt i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %17
  %25 = load i32, i32* @MSG_INFO, align 4
  %26 = call i32 @wpa_printf(i32 %25, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %7, align 4
  br label %88

27:                                               ; preds = %17
  %28 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %5, align 8
  %29 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %28, i32 0, i32 9
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @wps_validate_network_idx(i32 %30, i32 1)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %84, label %33

33:                                               ; preds = %27
  %34 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %5, align 8
  %35 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %34, i32 0, i32 8
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %5, align 8
  %38 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %37, i32 0, i32 7
  %39 = load i32, i32* %38, align 4
  %40 = call i64 @wps_validate_ssid(i32 %36, i32 %39, i32 1)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %84, label %42

42:                                               ; preds = %33
  %43 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %5, align 8
  %44 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %43, i32 0, i32 6
  %45 = load i32, i32* %44, align 4
  %46 = call i64 @wps_validate_auth_type(i32 %45, i32 1)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %84, label %48

48:                                               ; preds = %42
  %49 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %5, align 8
  %50 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = call i64 @wps_validate_encr_type(i32 %51, i32 1)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %84, label %54

54:                                               ; preds = %48
  %55 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %5, align 8
  %56 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %55, i32 0, i32 5
  %57 = load i32, i32* %56, align 4
  %58 = call i64 @wps_validate_network_key_index(i32 %57, i32 0)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %84, label %60

60:                                               ; preds = %54
  %61 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %5, align 8
  %62 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %61, i32 0, i32 4
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %5, align 8
  %65 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %5, align 8
  %68 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = call i64 @wps_validate_network_key(i32 %63, i32 %66, i32 %69, i32 1)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %84, label %72

72:                                               ; preds = %60
  %73 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %5, align 8
  %74 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = call i64 @wps_validate_mac_addr(i32 %75, i32 1)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %84, label %78

78:                                               ; preds = %72
  %79 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %5, align 8
  %80 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i64 @wps_validate_network_key_shareable(i32 %81, i32 0)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %78, %72, %60, %54, %48, %42, %33, %27
  %85 = load i32, i32* @MSG_INFO, align 4
  %86 = call i32 @wpa_printf(i32 %85, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %7, align 4
  br label %88

87:                                               ; preds = %78
  store i32 0, i32* %7, align 4
  br label %88

88:                                               ; preds = %87, %84, %24, %16, %12
  %89 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %5, align 8
  %90 = icmp ne %struct.wps_parse_attr* %89, null
  br i1 %90, label %91, label %94

91:                                               ; preds = %88
  %92 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %5, align 8
  %93 = call i32 @os_free(%struct.wps_parse_attr* %92)
  br label %94

94:                                               ; preds = %91, %88
  %95 = load i32, i32* %7, align 4
  ret i32 %95
}

declare dso_local i64 @os_zalloc(i32) #1

declare dso_local i32 @wpabuf_set(%struct.wpabuf*, i32*, i64) #1

declare dso_local i64 @wps_parse_msg(%struct.wpabuf*, %struct.wps_parse_attr*) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i64 @wps_validate_network_idx(i32, i32) #1

declare dso_local i64 @wps_validate_ssid(i32, i32, i32) #1

declare dso_local i64 @wps_validate_auth_type(i32, i32) #1

declare dso_local i64 @wps_validate_encr_type(i32, i32) #1

declare dso_local i64 @wps_validate_network_key_index(i32, i32) #1

declare dso_local i64 @wps_validate_network_key(i32, i32, i32, i32) #1

declare dso_local i64 @wps_validate_mac_addr(i32, i32) #1

declare dso_local i64 @wps_validate_network_key_shareable(i32, i32) #1

declare dso_local i32 @os_free(%struct.wps_parse_attr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

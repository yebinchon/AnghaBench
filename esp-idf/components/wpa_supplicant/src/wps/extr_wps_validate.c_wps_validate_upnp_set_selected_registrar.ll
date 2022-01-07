; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/wps/extr_wps_validate.c_wps_validate_upnp_set_selected_registrar.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/wps/extr_wps_validate.c_wps_validate_upnp_set_selected_registrar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }
%struct.wps_parse_attr = type { i64*, i32, i32, i32, i32*, i32, i32, i32 }

@MSG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"WPS-STRICT: No TLVs in SetSelectedRegistrar\00", align 1
@.str.1 = private unnamed_addr constant [63 x i8] c"WPS-STRICT: Failed to parse attributes in SetSelectedRegistrar\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"WPS-STRICT: Invalid SetSelectedRegistrar\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wps_validate_upnp_set_selected_registrar(%struct.wpabuf* %0) #0 {
  %2 = alloca %struct.wpabuf*, align 8
  %3 = alloca %struct.wps_parse_attr*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.wpabuf* %0, %struct.wpabuf** %2, align 8
  %7 = call i64 @os_zalloc(i32 48)
  %8 = inttoptr i64 %7 to %struct.wps_parse_attr*
  store %struct.wps_parse_attr* %8, %struct.wps_parse_attr** %3, align 8
  %9 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %3, align 8
  %10 = icmp eq %struct.wps_parse_attr* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 -99, i32* %6, align 4
  br label %95

12:                                               ; preds = %1
  %13 = load %struct.wpabuf*, %struct.wpabuf** %2, align 8
  %14 = icmp eq %struct.wpabuf* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %12
  %16 = load i32, i32* @MSG_INFO, align 4
  %17 = call i32 @wpa_printf(i32 %16, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %6, align 4
  br label %95

18:                                               ; preds = %12
  %19 = load %struct.wpabuf*, %struct.wpabuf** %2, align 8
  %20 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %3, align 8
  %21 = call i64 @wps_parse_msg(%struct.wpabuf* %19, %struct.wps_parse_attr* %20)
  %22 = icmp slt i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = load i32, i32* @MSG_INFO, align 4
  %25 = call i32 @wpa_printf(i32 %24, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %6, align 4
  br label %95

26:                                               ; preds = %18
  %27 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %3, align 8
  %28 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %27, i32 0, i32 4
  %29 = load i32*, i32** %28, align 8
  %30 = icmp ne i32* %29, null
  %31 = zext i1 %30 to i32
  store i32 %31, i32* %4, align 4
  %32 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %3, align 8
  %33 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %32, i32 0, i32 0
  %34 = load i64*, i64** %33, align 8
  %35 = icmp ne i64* %34, null
  br i1 %35, label %36, label %42

36:                                               ; preds = %26
  %37 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %3, align 8
  %38 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %37, i32 0, i32 0
  %39 = load i64*, i64** %38, align 8
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br label %42

42:                                               ; preds = %36, %26
  %43 = phi i1 [ false, %26 ], [ %41, %36 ]
  %44 = zext i1 %43 to i32
  store i32 %44, i32* %5, align 4
  %45 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %3, align 8
  %46 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %45, i32 0, i32 7
  %47 = load i32, i32* %46, align 8
  %48 = call i64 @wps_validate_version(i32 %47, i32 1)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %89, label %50

50:                                               ; preds = %42
  %51 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %3, align 8
  %52 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %51, i32 0, i32 6
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %5, align 4
  %55 = call i64 @wps_validate_dev_password_id(i32 %53, i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %89, label %57

57:                                               ; preds = %50
  %58 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %3, align 8
  %59 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %58, i32 0, i32 5
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* %4, align 4
  %62 = load i32, i32* %5, align 4
  %63 = call i64 @wps_validate_sel_reg_config_methods(i32 %60, i32 %61, i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %89, label %65

65:                                               ; preds = %57
  %66 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %3, align 8
  %67 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %66, i32 0, i32 4
  %68 = load i32*, i32** %67, align 8
  %69 = load i32, i32* %4, align 4
  %70 = call i64 @wps_validate_version2(i32* %68, i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %89, label %72

72:                                               ; preds = %65
  %73 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %3, align 8
  %74 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %3, align 8
  %77 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* %4, align 4
  %80 = call i64 @wps_validate_authorized_macs(i32 %75, i32 %78, i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %89, label %82

82:                                               ; preds = %72
  %83 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %3, align 8
  %84 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* %4, align 4
  %87 = call i64 @wps_validate_uuid_r(i32 %85, i32 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %94

89:                                               ; preds = %82, %72, %65, %57, %50, %42
  %90 = load i32, i32* @MSG_INFO, align 4
  %91 = call i32 @wpa_printf(i32 %90, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  %92 = load i32, i32* %6, align 4
  %93 = sub nsw i32 %92, 1
  br label %95

94:                                               ; preds = %82
  store i32 0, i32* %6, align 4
  br label %95

95:                                               ; preds = %94, %89, %23, %15, %11
  %96 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %3, align 8
  %97 = icmp ne %struct.wps_parse_attr* %96, null
  br i1 %97, label %98, label %101

98:                                               ; preds = %95
  %99 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %3, align 8
  %100 = call i32 @os_free(%struct.wps_parse_attr* %99)
  br label %101

101:                                              ; preds = %98, %95
  %102 = load i32, i32* %6, align 4
  ret i32 %102
}

declare dso_local i64 @os_zalloc(i32) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i64 @wps_parse_msg(%struct.wpabuf*, %struct.wps_parse_attr*) #1

declare dso_local i64 @wps_validate_version(i32, i32) #1

declare dso_local i64 @wps_validate_dev_password_id(i32, i32) #1

declare dso_local i64 @wps_validate_sel_reg_config_methods(i32, i32, i32) #1

declare dso_local i64 @wps_validate_version2(i32*, i32) #1

declare dso_local i64 @wps_validate_authorized_macs(i32, i32, i32) #1

declare dso_local i64 @wps_validate_uuid_r(i32, i32) #1

declare dso_local i32 @os_free(%struct.wps_parse_attr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

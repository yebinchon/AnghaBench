; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/wps/extr_wps_validate.c_wps_validate_beacon.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/wps/extr_wps_validate.c_wps_validate_beacon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }
%struct.wps_parse_attr = type { i64*, i32, i32, i32*, i32, i32, i32, i32, i32, i32, i32 }

@MSG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"WPS-STRICT: No WPS IE in Beacon frame\00", align 1
@.str.1 = private unnamed_addr constant [51 x i8] c"WPS-STRICT: Failed to parse WPS IE in Beacon frame\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"WPS-STRICT: Invalid Beacon frame\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wps_validate_beacon(%struct.wpabuf* %0) #0 {
  %2 = alloca %struct.wpabuf*, align 8
  %3 = alloca %struct.wps_parse_attr*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.wpabuf* %0, %struct.wpabuf** %2, align 8
  %7 = call i64 @os_zalloc(i32 56)
  %8 = inttoptr i64 %7 to %struct.wps_parse_attr*
  store %struct.wps_parse_attr* %8, %struct.wps_parse_attr** %3, align 8
  %9 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %3, align 8
  %10 = icmp eq %struct.wps_parse_attr* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 -99, i32* %6, align 4
  br label %115

12:                                               ; preds = %1
  %13 = load %struct.wpabuf*, %struct.wpabuf** %2, align 8
  %14 = icmp eq %struct.wpabuf* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %12
  %16 = load i32, i32* @MSG_INFO, align 4
  %17 = call i32 @wpa_printf(i32 %16, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %6, align 4
  br label %115

18:                                               ; preds = %12
  %19 = load %struct.wpabuf*, %struct.wpabuf** %2, align 8
  %20 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %3, align 8
  %21 = call i64 @wps_parse_msg(%struct.wpabuf* %19, %struct.wps_parse_attr* %20)
  %22 = icmp slt i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = load i32, i32* @MSG_INFO, align 4
  %25 = call i32 @wpa_printf(i32 %24, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %6, align 4
  br label %115

26:                                               ; preds = %18
  %27 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %3, align 8
  %28 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %27, i32 0, i32 3
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
  %46 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %45, i32 0, i32 10
  %47 = load i32, i32* %46, align 8
  %48 = call i64 @wps_validate_version(i32 %47, i32 1)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %111, label %50

50:                                               ; preds = %42
  %51 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %3, align 8
  %52 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %51, i32 0, i32 9
  %53 = load i32, i32* %52, align 4
  %54 = call i64 @wps_validate_wps_state(i32 %53, i32 1)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %111, label %56

56:                                               ; preds = %50
  %57 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %3, align 8
  %58 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %57, i32 0, i32 8
  %59 = load i32, i32* %58, align 8
  %60 = call i64 @wps_validate_ap_setup_locked(i32 %59, i32 0)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %111, label %62

62:                                               ; preds = %56
  %63 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %3, align 8
  %64 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %63, i32 0, i32 0
  %65 = load i64*, i64** %64, align 8
  %66 = call i64 @wps_validate_selected_registrar(i64* %65, i32 0)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %111, label %68

68:                                               ; preds = %62
  %69 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %3, align 8
  %70 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %69, i32 0, i32 7
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %5, align 4
  %73 = call i64 @wps_validate_dev_password_id(i32 %71, i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %111, label %75

75:                                               ; preds = %68
  %76 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %3, align 8
  %77 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %76, i32 0, i32 6
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* %4, align 4
  %80 = load i32, i32* %5, align 4
  %81 = call i64 @wps_validate_sel_reg_config_methods(i32 %78, i32 %79, i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %111, label %83

83:                                               ; preds = %75
  %84 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %3, align 8
  %85 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %84, i32 0, i32 5
  %86 = load i32, i32* %85, align 4
  %87 = call i64 @wps_validate_uuid_e(i32 %86, i32 0)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %111, label %89

89:                                               ; preds = %83
  %90 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %3, align 8
  %91 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %90, i32 0, i32 4
  %92 = load i32, i32* %91, align 8
  %93 = call i64 @wps_validate_rf_bands(i32 %92, i32 0)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %111, label %95

95:                                               ; preds = %89
  %96 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %3, align 8
  %97 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %96, i32 0, i32 3
  %98 = load i32*, i32** %97, align 8
  %99 = load i32, i32* %4, align 4
  %100 = call i64 @wps_validate_version2(i32* %98, i32 %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %111, label %102

102:                                              ; preds = %95
  %103 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %3, align 8
  %104 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %3, align 8
  %107 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 8
  %109 = call i64 @wps_validate_authorized_macs(i32 %105, i32 %108, i32 0)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %114

111:                                              ; preds = %102, %95, %89, %83, %75, %68, %62, %56, %50, %42
  %112 = load i32, i32* @MSG_INFO, align 4
  %113 = call i32 @wpa_printf(i32 %112, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %6, align 4
  br label %115

114:                                              ; preds = %102
  store i32 0, i32* %6, align 4
  br label %115

115:                                              ; preds = %114, %111, %23, %15, %11
  %116 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %3, align 8
  %117 = icmp ne %struct.wps_parse_attr* %116, null
  br i1 %117, label %118, label %121

118:                                              ; preds = %115
  %119 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %3, align 8
  %120 = call i32 @os_free(%struct.wps_parse_attr* %119)
  br label %121

121:                                              ; preds = %118, %115
  %122 = load i32, i32* %6, align 4
  ret i32 %122
}

declare dso_local i64 @os_zalloc(i32) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i64 @wps_parse_msg(%struct.wpabuf*, %struct.wps_parse_attr*) #1

declare dso_local i64 @wps_validate_version(i32, i32) #1

declare dso_local i64 @wps_validate_wps_state(i32, i32) #1

declare dso_local i64 @wps_validate_ap_setup_locked(i32, i32) #1

declare dso_local i64 @wps_validate_selected_registrar(i64*, i32) #1

declare dso_local i64 @wps_validate_dev_password_id(i32, i32) #1

declare dso_local i64 @wps_validate_sel_reg_config_methods(i32, i32, i32) #1

declare dso_local i64 @wps_validate_uuid_e(i32, i32) #1

declare dso_local i64 @wps_validate_rf_bands(i32, i32) #1

declare dso_local i64 @wps_validate_version2(i32*, i32) #1

declare dso_local i64 @wps_validate_authorized_macs(i32, i32, i32) #1

declare dso_local i32 @os_free(%struct.wps_parse_attr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/wps/extr_wps.c_wps_build_probe_req_ie.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/wps/extr_wps.c_wps_build_probe_req_ie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }
%struct.wps_device_data = type { i64, i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"WPS: Building WPS IE for Probe Request\0A\00", align 1
@MSG_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"WPS: ie alloc failed.\00", align 1
@WPS_CFG_NO_ERROR = common dso_local global i32 0, align 4
@WPS_REQ_ENROLLEE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.wpabuf* @wps_build_probe_req_ie(i32 %0, %struct.wps_device_data* %1, i32* %2, i32 %3, i32 %4, i32* %5) #0 {
  %7 = alloca %struct.wpabuf*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.wps_device_data*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca %struct.wpabuf*, align 8
  store i32 %0, i32* %8, align 4
  store %struct.wps_device_data* %1, %struct.wps_device_data** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  %15 = load i32, i32* @MSG_DEBUG, align 4
  %16 = call i32 @wpa_printf(i32 %15, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %17 = call %struct.wpabuf* @wpabuf_alloc(i32 400)
  store %struct.wpabuf* %17, %struct.wpabuf** %14, align 8
  %18 = load %struct.wpabuf*, %struct.wpabuf** %14, align 8
  %19 = icmp eq %struct.wpabuf* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %6
  %21 = load i32, i32* @MSG_ERROR, align 4
  %22 = call i32 @wpa_printf(i32 %21, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  store %struct.wpabuf* null, %struct.wpabuf** %7, align 8
  br label %99

23:                                               ; preds = %6
  %24 = load %struct.wpabuf*, %struct.wpabuf** %14, align 8
  %25 = call i64 @wps_build_version(%struct.wpabuf* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %80, label %27

27:                                               ; preds = %23
  %28 = load %struct.wpabuf*, %struct.wpabuf** %14, align 8
  %29 = load i32, i32* %11, align 4
  %30 = call i64 @wps_build_req_type(%struct.wpabuf* %28, i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %80, label %32

32:                                               ; preds = %27
  %33 = load %struct.wpabuf*, %struct.wpabuf** %14, align 8
  %34 = load %struct.wps_device_data*, %struct.wps_device_data** %9, align 8
  %35 = getelementptr inbounds %struct.wps_device_data, %struct.wps_device_data* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = call i64 @wps_build_config_methods(%struct.wpabuf* %33, i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %80, label %39

39:                                               ; preds = %32
  %40 = load %struct.wpabuf*, %struct.wpabuf** %14, align 8
  %41 = load i32*, i32** %10, align 8
  %42 = call i64 @wps_build_uuid_e(%struct.wpabuf* %40, i32* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %80, label %44

44:                                               ; preds = %39
  %45 = load %struct.wps_device_data*, %struct.wps_device_data** %9, align 8
  %46 = load %struct.wpabuf*, %struct.wpabuf** %14, align 8
  %47 = call i64 @wps_build_primary_dev_type(%struct.wps_device_data* %45, %struct.wpabuf* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %80, label %49

49:                                               ; preds = %44
  %50 = load %struct.wps_device_data*, %struct.wps_device_data** %9, align 8
  %51 = load %struct.wpabuf*, %struct.wpabuf** %14, align 8
  %52 = call i64 @wps_build_rf_bands(%struct.wps_device_data* %50, %struct.wpabuf* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %80, label %54

54:                                               ; preds = %49
  %55 = load %struct.wpabuf*, %struct.wpabuf** %14, align 8
  %56 = call i64 @wps_build_assoc_state(i32* null, %struct.wpabuf* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %80, label %58

58:                                               ; preds = %54
  %59 = load %struct.wpabuf*, %struct.wpabuf** %14, align 8
  %60 = load i32, i32* @WPS_CFG_NO_ERROR, align 4
  %61 = call i64 @wps_build_config_error(%struct.wpabuf* %59, i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %80, label %63

63:                                               ; preds = %58
  %64 = load %struct.wpabuf*, %struct.wpabuf** %14, align 8
  %65 = load i32, i32* %8, align 4
  %66 = call i64 @wps_build_dev_password_id(%struct.wpabuf* %64, i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %80, label %68

68:                                               ; preds = %63
  %69 = load %struct.wps_device_data*, %struct.wps_device_data** %9, align 8
  %70 = load %struct.wpabuf*, %struct.wpabuf** %14, align 8
  %71 = load i32, i32* %12, align 4
  %72 = load i32*, i32** %13, align 8
  %73 = call i64 @wps_build_req_dev_type(%struct.wps_device_data* %69, %struct.wpabuf* %70, i32 %71, i32* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %80, label %75

75:                                               ; preds = %68
  %76 = load %struct.wps_device_data*, %struct.wps_device_data** %9, align 8
  %77 = load %struct.wpabuf*, %struct.wpabuf** %14, align 8
  %78 = call i64 @wps_build_secondary_dev_type(%struct.wps_device_data* %76, %struct.wpabuf* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %75, %68, %63, %58, %54, %49, %44, %39, %32, %27, %23
  %81 = load %struct.wpabuf*, %struct.wpabuf** %14, align 8
  %82 = call i32 @wpabuf_free(%struct.wpabuf* %81)
  store %struct.wpabuf* null, %struct.wpabuf** %7, align 8
  br label %99

83:                                               ; preds = %75
  %84 = load %struct.wps_device_data*, %struct.wps_device_data** %9, align 8
  %85 = getelementptr inbounds %struct.wps_device_data, %struct.wps_device_data* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %96

88:                                               ; preds = %83
  %89 = load %struct.wps_device_data*, %struct.wps_device_data** %9, align 8
  %90 = load %struct.wpabuf*, %struct.wpabuf** %14, align 8
  %91 = call i64 @wps_build_dev_name(%struct.wps_device_data* %89, %struct.wpabuf* %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %88
  %94 = load %struct.wpabuf*, %struct.wpabuf** %14, align 8
  %95 = call i32 @wpabuf_free(%struct.wpabuf* %94)
  store %struct.wpabuf* null, %struct.wpabuf** %7, align 8
  br label %99

96:                                               ; preds = %88, %83
  %97 = load %struct.wpabuf*, %struct.wpabuf** %14, align 8
  %98 = call %struct.wpabuf* @wps_ie_encapsulate(%struct.wpabuf* %97)
  store %struct.wpabuf* %98, %struct.wpabuf** %7, align 8
  br label %99

99:                                               ; preds = %96, %93, %80, %20
  %100 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  ret %struct.wpabuf* %100
}

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local %struct.wpabuf* @wpabuf_alloc(i32) #1

declare dso_local i64 @wps_build_version(%struct.wpabuf*) #1

declare dso_local i64 @wps_build_req_type(%struct.wpabuf*, i32) #1

declare dso_local i64 @wps_build_config_methods(%struct.wpabuf*, i32) #1

declare dso_local i64 @wps_build_uuid_e(%struct.wpabuf*, i32*) #1

declare dso_local i64 @wps_build_primary_dev_type(%struct.wps_device_data*, %struct.wpabuf*) #1

declare dso_local i64 @wps_build_rf_bands(%struct.wps_device_data*, %struct.wpabuf*) #1

declare dso_local i64 @wps_build_assoc_state(i32*, %struct.wpabuf*) #1

declare dso_local i64 @wps_build_config_error(%struct.wpabuf*, i32) #1

declare dso_local i64 @wps_build_dev_password_id(%struct.wpabuf*, i32) #1

declare dso_local i64 @wps_build_req_dev_type(%struct.wps_device_data*, %struct.wpabuf*, i32, i32*) #1

declare dso_local i64 @wps_build_secondary_dev_type(%struct.wps_device_data*, %struct.wpabuf*) #1

declare dso_local i32 @wpabuf_free(%struct.wpabuf*) #1

declare dso_local i64 @wps_build_dev_name(%struct.wps_device_data*, %struct.wpabuf*) #1

declare dso_local %struct.wpabuf* @wps_ie_encapsulate(%struct.wpabuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

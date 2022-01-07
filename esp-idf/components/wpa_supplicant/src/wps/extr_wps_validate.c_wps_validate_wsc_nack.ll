; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/wps/extr_wps_validate.c_wps_validate_wsc_nack.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/wps/extr_wps_validate.c_wps_validate_wsc_nack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }
%struct.wps_parse_attr = type { i32*, i32, i32, i32, i32, i32 }

@MSG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"WPS-STRICT: No TLVs in WSC_NACK\00", align 1
@.str.1 = private unnamed_addr constant [51 x i8] c"WPS-STRICT: Failed to parse attributes in WSC_NACK\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"WPS-STRICT: Invalid WSC_NACK\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wps_validate_wsc_nack(%struct.wpabuf* %0) #0 {
  %2 = alloca %struct.wpabuf*, align 8
  %3 = alloca %struct.wps_parse_attr*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.wpabuf* %0, %struct.wpabuf** %2, align 8
  %6 = call i64 @os_zalloc(i32 32)
  %7 = inttoptr i64 %6 to %struct.wps_parse_attr*
  store %struct.wps_parse_attr* %7, %struct.wps_parse_attr** %3, align 8
  %8 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %3, align 8
  %9 = icmp eq %struct.wps_parse_attr* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32 -99, i32* %5, align 4
  br label %71

11:                                               ; preds = %1
  %12 = load %struct.wpabuf*, %struct.wpabuf** %2, align 8
  %13 = icmp eq %struct.wpabuf* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %11
  %15 = load i32, i32* @MSG_INFO, align 4
  %16 = call i32 @wpa_printf(i32 %15, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %17

17:                                               ; preds = %14, %11
  %18 = load %struct.wpabuf*, %struct.wpabuf** %2, align 8
  %19 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %3, align 8
  %20 = call i64 @wps_parse_msg(%struct.wpabuf* %18, %struct.wps_parse_attr* %19)
  %21 = icmp slt i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = load i32, i32* @MSG_INFO, align 4
  %24 = call i32 @wpa_printf(i32 %23, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %71

25:                                               ; preds = %17
  %26 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %3, align 8
  %27 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = icmp ne i32* %28, null
  %30 = zext i1 %29 to i32
  store i32 %30, i32* %4, align 4
  %31 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %3, align 8
  %32 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %31, i32 0, i32 5
  %33 = load i32, i32* %32, align 8
  %34 = call i64 @wps_validate_version(i32 %33, i32 1)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %67, label %36

36:                                               ; preds = %25
  %37 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %3, align 8
  %38 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 4
  %40 = call i64 @wps_validate_msg_type(i32 %39, i32 1)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %67, label %42

42:                                               ; preds = %36
  %43 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %3, align 8
  %44 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 8
  %46 = call i64 @wps_validate_enrollee_nonce(i32 %45, i32 1)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %67, label %48

48:                                               ; preds = %42
  %49 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %3, align 8
  %50 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = call i64 @wps_validate_registrar_nonce(i32 %51, i32 1)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %67, label %54

54:                                               ; preds = %48
  %55 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %3, align 8
  %56 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = call i64 @wps_validate_config_error(i32 %57, i32 1)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %67, label %60

60:                                               ; preds = %54
  %61 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %3, align 8
  %62 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = load i32, i32* %4, align 4
  %65 = call i64 @wps_validate_version2(i32* %63, i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %60, %54, %48, %42, %36, %25
  %68 = load i32, i32* @MSG_INFO, align 4
  %69 = call i32 @wpa_printf(i32 %68, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  br label %71

70:                                               ; preds = %60
  store i32 0, i32* %5, align 4
  br label %71

71:                                               ; preds = %70, %67, %22, %10
  %72 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %3, align 8
  %73 = icmp ne %struct.wps_parse_attr* %72, null
  br i1 %73, label %74, label %77

74:                                               ; preds = %71
  %75 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %3, align 8
  %76 = call i32 @os_free(%struct.wps_parse_attr* %75)
  br label %77

77:                                               ; preds = %74, %71
  %78 = load i32, i32* %5, align 4
  ret i32 %78
}

declare dso_local i64 @os_zalloc(i32) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i64 @wps_parse_msg(%struct.wpabuf*, %struct.wps_parse_attr*) #1

declare dso_local i64 @wps_validate_version(i32, i32) #1

declare dso_local i64 @wps_validate_msg_type(i32, i32) #1

declare dso_local i64 @wps_validate_enrollee_nonce(i32, i32) #1

declare dso_local i64 @wps_validate_registrar_nonce(i32, i32) #1

declare dso_local i64 @wps_validate_config_error(i32, i32) #1

declare dso_local i64 @wps_validate_version2(i32*, i32) #1

declare dso_local i32 @os_free(%struct.wps_parse_attr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/wps/extr_wps_validate.c_wps_validate_m5_encr.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/wps/extr_wps_validate.c_wps_validate_m5_encr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }
%struct.wps_parse_attr = type { i32, i32 }

@MSG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"WPS-STRICT: No TLVs in M5 encrypted settings\00", align 1
@.str.1 = private unnamed_addr constant [64 x i8] c"WPS-STRICT: Failed to parse attributes in M5 encrypted settings\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"WPS-STRICT: Invalid M5 encrypted settings\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wps_validate_m5_encr(%struct.wpabuf* %0, i32 %1) #0 {
  %3 = alloca %struct.wpabuf*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.wps_parse_attr*, align 8
  %6 = alloca i32, align 4
  store %struct.wpabuf* %0, %struct.wpabuf** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = call i64 @os_zalloc(i32 8)
  %8 = inttoptr i64 %7 to %struct.wps_parse_attr*
  store %struct.wps_parse_attr* %8, %struct.wps_parse_attr** %5, align 8
  %9 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %5, align 8
  %10 = icmp eq %struct.wps_parse_attr* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i32 -99, i32* %6, align 4
  br label %42

12:                                               ; preds = %2
  %13 = load %struct.wpabuf*, %struct.wpabuf** %3, align 8
  %14 = icmp eq %struct.wpabuf* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %12
  %16 = load i32, i32* @MSG_INFO, align 4
  %17 = call i32 @wpa_printf(i32 %16, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %6, align 4
  br label %42

18:                                               ; preds = %12
  %19 = load %struct.wpabuf*, %struct.wpabuf** %3, align 8
  %20 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %5, align 8
  %21 = call i64 @wps_parse_msg(%struct.wpabuf* %19, %struct.wps_parse_attr* %20)
  %22 = icmp slt i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = load i32, i32* @MSG_INFO, align 4
  %25 = call i32 @wpa_printf(i32 %24, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %6, align 4
  br label %42

26:                                               ; preds = %18
  %27 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %5, align 8
  %28 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @wps_validate_e_snonce1(i32 %29, i32 1)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %38, label %32

32:                                               ; preds = %26
  %33 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %5, align 8
  %34 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @wps_validate_key_wrap_auth(i32 %35, i32 1)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %32, %26
  %39 = load i32, i32* @MSG_INFO, align 4
  %40 = call i32 @wpa_printf(i32 %39, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %6, align 4
  br label %42

41:                                               ; preds = %32
  store i32 0, i32* %6, align 4
  br label %42

42:                                               ; preds = %41, %38, %23, %15, %11
  %43 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %5, align 8
  %44 = icmp ne %struct.wps_parse_attr* %43, null
  br i1 %44, label %45, label %48

45:                                               ; preds = %42
  %46 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %5, align 8
  %47 = call i32 @os_free(%struct.wps_parse_attr* %46)
  br label %48

48:                                               ; preds = %45, %42
  %49 = load i32, i32* %6, align 4
  ret i32 %49
}

declare dso_local i64 @os_zalloc(i32) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i64 @wps_parse_msg(%struct.wpabuf*, %struct.wps_parse_attr*) #1

declare dso_local i64 @wps_validate_e_snonce1(i32, i32) #1

declare dso_local i64 @wps_validate_key_wrap_auth(i32, i32) #1

declare dso_local i32 @os_free(%struct.wps_parse_attr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

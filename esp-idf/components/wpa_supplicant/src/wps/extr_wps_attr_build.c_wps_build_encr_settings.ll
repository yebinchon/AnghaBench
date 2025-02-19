; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/wps/extr_wps_attr_build.c_wps_build_encr_settings.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/wps/extr_wps_attr_build.c_wps_build_encr_settings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wps_data = type { i32 }
%struct.wpabuf = type { i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"WPS:  * Encrypted Settings\00", align 1
@ATTR_ENCR_SETTINGS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [35 x i8] c"WPS:  * AES 128 Encrypted Settings\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wps_build_encr_settings(%struct.wps_data* %0, %struct.wpabuf* %1, %struct.wpabuf* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.wps_data*, align 8
  %6 = alloca %struct.wpabuf*, align 8
  %7 = alloca %struct.wpabuf*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  store %struct.wps_data* %0, %struct.wps_data** %5, align 8
  store %struct.wpabuf* %1, %struct.wpabuf** %6, align 8
  store %struct.wpabuf* %2, %struct.wpabuf** %7, align 8
  store i64 16, i64* %9, align 8
  %12 = load i32, i32* @MSG_DEBUG, align 4
  %13 = call i32 @wpa_printf(i32 %12, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %15 = call i64 @wpabuf_len(%struct.wpabuf* %14)
  %16 = urem i64 %15, 16
  %17 = sub i64 16, %16
  store i64 %17, i64* %8, align 8
  %18 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %19 = load i64, i64* %8, align 8
  %20 = call i32* @wpabuf_put(%struct.wpabuf* %18, i64 %19)
  %21 = load i64, i64* %8, align 8
  %22 = load i64, i64* %8, align 8
  %23 = call i32 @os_memset(i32* %20, i64 %21, i64 %22)
  %24 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %25 = load i64, i64* @ATTR_ENCR_SETTINGS, align 8
  %26 = call i32 @wpabuf_put_be16(%struct.wpabuf* %24, i64 %25)
  %27 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %28 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %29 = call i64 @wpabuf_len(%struct.wpabuf* %28)
  %30 = add i64 16, %29
  %31 = call i32 @wpabuf_put_be16(%struct.wpabuf* %27, i64 %30)
  %32 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %33 = call i32* @wpabuf_put(%struct.wpabuf* %32, i64 16)
  store i32* %33, i32** %10, align 8
  %34 = load i32*, i32** %10, align 8
  %35 = call i64 @random_get_bytes(i32* %34, i64 16)
  %36 = icmp slt i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %57

38:                                               ; preds = %3
  %39 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %40 = call i32* @wpabuf_put(%struct.wpabuf* %39, i64 0)
  store i32* %40, i32** %11, align 8
  %41 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %42 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %43 = call i32 @wpabuf_put_buf(%struct.wpabuf* %41, %struct.wpabuf* %42)
  %44 = load i32, i32* @MSG_DEBUG, align 4
  %45 = call i32 @wpa_printf(i32 %44, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %46 = load %struct.wps_data*, %struct.wps_data** %5, align 8
  %47 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32*, i32** %10, align 8
  %50 = load i32*, i32** %11, align 8
  %51 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %52 = call i64 @wpabuf_len(%struct.wpabuf* %51)
  %53 = call i64 @aes_128_cbc_encrypt(i32 %48, i32* %49, i32* %50, i64 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %38
  store i32 -1, i32* %4, align 4
  br label %57

56:                                               ; preds = %38
  store i32 0, i32* %4, align 4
  br label %57

57:                                               ; preds = %56, %55, %37
  %58 = load i32, i32* %4, align 4
  ret i32 %58
}

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i64 @wpabuf_len(%struct.wpabuf*) #1

declare dso_local i32 @os_memset(i32*, i64, i64) #1

declare dso_local i32* @wpabuf_put(%struct.wpabuf*, i64) #1

declare dso_local i32 @wpabuf_put_be16(%struct.wpabuf*, i64) #1

declare dso_local i64 @random_get_bytes(i32*, i64) #1

declare dso_local i32 @wpabuf_put_buf(%struct.wpabuf*, %struct.wpabuf*) #1

declare dso_local i64 @aes_128_cbc_encrypt(i32, i32*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

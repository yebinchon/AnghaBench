; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/wps/extr_wps_common.c_wps_derive_psk.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/wps/extr_wps_common.c_wps_derive_psk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wps_data = type { i32, i32, i32 }

@SHA256_MAC_LEN = common dso_local global i32 0, align 4
@WPS_AUTHKEY_LEN = common dso_local global i32 0, align 4
@WPS_PSK_LEN = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"WPS: Device Password\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"WPS: PSK1\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"WPS: PSK2\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wps_derive_psk(%struct.wps_data* %0, i32* %1, i64 %2) #0 {
  %4 = alloca %struct.wps_data*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store %struct.wps_data* %0, %struct.wps_data** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load i32, i32* @SHA256_MAC_LEN, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %7, align 8
  %12 = alloca i32, i64 %10, align 16
  store i64 %10, i64* %8, align 8
  %13 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %14 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @WPS_AUTHKEY_LEN, align 4
  %17 = load i32*, i32** %5, align 8
  %18 = load i64, i64* %6, align 8
  %19 = add i64 %18, 1
  %20 = udiv i64 %19, 2
  %21 = call i32 @hmac_sha256(i32 %15, i32 %16, i32* %17, i64 %20, i32* %12)
  %22 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %23 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @WPS_PSK_LEN, align 4
  %26 = call i32 @os_memcpy(i32 %24, i32* %12, i32 %25)
  %27 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %28 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @WPS_AUTHKEY_LEN, align 4
  %31 = load i32*, i32** %5, align 8
  %32 = load i64, i64* %6, align 8
  %33 = add i64 %32, 1
  %34 = udiv i64 %33, 2
  %35 = getelementptr inbounds i32, i32* %31, i64 %34
  %36 = load i64, i64* %6, align 8
  %37 = udiv i64 %36, 2
  %38 = call i32 @hmac_sha256(i32 %29, i32 %30, i32* %35, i64 %37, i32* %12)
  %39 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %40 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @WPS_PSK_LEN, align 4
  %43 = call i32 @os_memcpy(i32 %41, i32* %12, i32 %42)
  %44 = load i32, i32* @MSG_DEBUG, align 4
  %45 = load i32*, i32** %5, align 8
  %46 = load i64, i64* %6, align 8
  %47 = call i32 @wpa_hexdump_ascii_key(i32 %44, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32* %45, i64 %46)
  %48 = load i32, i32* @MSG_DEBUG, align 4
  %49 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %50 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @WPS_PSK_LEN, align 4
  %53 = call i32 @wpa_hexdump_key(i32 %48, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %51, i32 %52)
  %54 = load i32, i32* @MSG_DEBUG, align 4
  %55 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %56 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @WPS_PSK_LEN, align 4
  %59 = call i32 @wpa_hexdump_key(i32 %54, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %57, i32 %58)
  %60 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %60)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @hmac_sha256(i32, i32, i32*, i64, i32*) #2

declare dso_local i32 @os_memcpy(i32, i32*, i32) #2

declare dso_local i32 @wpa_hexdump_ascii_key(i32, i8*, i32*, i64) #2

declare dso_local i32 @wpa_hexdump_key(i32, i8*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

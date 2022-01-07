; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/wps/extr_wps_attr_build.c_wps_build_authenticator.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/wps/extr_wps_attr_build.c_wps_build_authenticator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wps_data = type { i32, %struct.wpabuf* }
%struct.wpabuf = type { i32 }

@SHA256_MAC_LEN = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"WPS: Last message not available for building authenticator\00", align 1
@WPS_AUTHKEY_LEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"WPS:  * Authenticator\00", align 1
@ATTR_AUTHENTICATOR = common dso_local global i32 0, align 4
@WPS_AUTHENTICATOR_LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wps_build_authenticator(%struct.wps_data* %0, %struct.wpabuf* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wps_data*, align 8
  %5 = alloca %struct.wpabuf*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca [2 x i32*], align 16
  %9 = alloca [2 x i64], align 16
  %10 = alloca i32, align 4
  store %struct.wps_data* %0, %struct.wps_data** %4, align 8
  store %struct.wpabuf* %1, %struct.wpabuf** %5, align 8
  %11 = load i32, i32* @SHA256_MAC_LEN, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %6, align 8
  %14 = alloca i32, i64 %12, align 16
  store i64 %12, i64* %7, align 8
  %15 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %16 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %15, i32 0, i32 1
  %17 = load %struct.wpabuf*, %struct.wpabuf** %16, align 8
  %18 = icmp eq %struct.wpabuf* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load i32, i32* @MSG_DEBUG, align 4
  %21 = call i32 @wpa_printf(i32 %20, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %57

22:                                               ; preds = %2
  %23 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %24 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %23, i32 0, i32 1
  %25 = load %struct.wpabuf*, %struct.wpabuf** %24, align 8
  %26 = call i32* @wpabuf_head(%struct.wpabuf* %25)
  %27 = getelementptr inbounds [2 x i32*], [2 x i32*]* %8, i64 0, i64 0
  store i32* %26, i32** %27, align 16
  %28 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %29 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %28, i32 0, i32 1
  %30 = load %struct.wpabuf*, %struct.wpabuf** %29, align 8
  %31 = call i64 @wpabuf_len(%struct.wpabuf* %30)
  %32 = getelementptr inbounds [2 x i64], [2 x i64]* %9, i64 0, i64 0
  store i64 %31, i64* %32, align 16
  %33 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %34 = call i32* @wpabuf_head(%struct.wpabuf* %33)
  %35 = getelementptr inbounds [2 x i32*], [2 x i32*]* %8, i64 0, i64 1
  store i32* %34, i32** %35, align 8
  %36 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %37 = call i64 @wpabuf_len(%struct.wpabuf* %36)
  %38 = getelementptr inbounds [2 x i64], [2 x i64]* %9, i64 0, i64 1
  store i64 %37, i64* %38, align 8
  %39 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %40 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @WPS_AUTHKEY_LEN, align 4
  %43 = getelementptr inbounds [2 x i32*], [2 x i32*]* %8, i64 0, i64 0
  %44 = getelementptr inbounds [2 x i64], [2 x i64]* %9, i64 0, i64 0
  %45 = call i32 @hmac_sha256_vector(i32 %41, i32 %42, i32 2, i32** %43, i64* %44, i32* %14)
  %46 = load i32, i32* @MSG_DEBUG, align 4
  %47 = call i32 @wpa_printf(i32 %46, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %48 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %49 = load i32, i32* @ATTR_AUTHENTICATOR, align 4
  %50 = call i32 @wpabuf_put_be16(%struct.wpabuf* %48, i32 %49)
  %51 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %52 = load i32, i32* @WPS_AUTHENTICATOR_LEN, align 4
  %53 = call i32 @wpabuf_put_be16(%struct.wpabuf* %51, i32 %52)
  %54 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %55 = load i32, i32* @WPS_AUTHENTICATOR_LEN, align 4
  %56 = call i32 @wpabuf_put_data(%struct.wpabuf* %54, i32* %14, i32 %55)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %57

57:                                               ; preds = %22, %19
  %58 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %58)
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @wpa_printf(i32, i8*) #2

declare dso_local i32* @wpabuf_head(%struct.wpabuf*) #2

declare dso_local i64 @wpabuf_len(%struct.wpabuf*) #2

declare dso_local i32 @hmac_sha256_vector(i32, i32, i32, i32**, i64*, i32*) #2

declare dso_local i32 @wpabuf_put_be16(%struct.wpabuf*, i32) #2

declare dso_local i32 @wpabuf_put_data(%struct.wpabuf*, i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

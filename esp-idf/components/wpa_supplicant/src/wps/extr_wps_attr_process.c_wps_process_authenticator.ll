; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/wps/extr_wps_attr_process.c_wps_process_authenticator.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/wps/extr_wps_attr_process.c_wps_process_authenticator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wps_data = type { i32, %struct.wpabuf* }
%struct.wpabuf = type { i32 }

@SHA256_MAC_LEN = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"WPS: No Authenticator attribute included\00", align 1
@.str.1 = private unnamed_addr constant [61 x i8] c"WPS: Last message not available for validating authenticator\00", align 1
@WPS_AUTHENTICATOR_LEN = common dso_local global i32 0, align 4
@WPS_AUTHKEY_LEN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"WPS: Incorrect Authenticator\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wps_process_authenticator(%struct.wps_data* %0, i32* %1, %struct.wpabuf* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.wps_data*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.wpabuf*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca [2 x i32*], align 16
  %11 = alloca [2 x i64], align 16
  %12 = alloca i32, align 4
  store %struct.wps_data* %0, %struct.wps_data** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.wpabuf* %2, %struct.wpabuf** %7, align 8
  %13 = load i32, i32* @SHA256_MAC_LEN, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %8, align 8
  %16 = alloca i32, i64 %14, align 16
  store i64 %14, i64* %9, align 8
  %17 = load i32*, i32** %6, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %3
  %20 = load i32, i32* @MSG_DEBUG, align 4
  %21 = call i32 @wpa_printf(i32 %20, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %67

22:                                               ; preds = %3
  %23 = load %struct.wps_data*, %struct.wps_data** %5, align 8
  %24 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %23, i32 0, i32 1
  %25 = load %struct.wpabuf*, %struct.wpabuf** %24, align 8
  %26 = icmp eq %struct.wpabuf* %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %22
  %28 = load i32, i32* @MSG_DEBUG, align 4
  %29 = call i32 @wpa_printf(i32 %28, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %67

30:                                               ; preds = %22
  %31 = load %struct.wps_data*, %struct.wps_data** %5, align 8
  %32 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %31, i32 0, i32 1
  %33 = load %struct.wpabuf*, %struct.wpabuf** %32, align 8
  %34 = call i32* @wpabuf_head(%struct.wpabuf* %33)
  %35 = getelementptr inbounds [2 x i32*], [2 x i32*]* %10, i64 0, i64 0
  store i32* %34, i32** %35, align 16
  %36 = load %struct.wps_data*, %struct.wps_data** %5, align 8
  %37 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %36, i32 0, i32 1
  %38 = load %struct.wpabuf*, %struct.wpabuf** %37, align 8
  %39 = call i32 @wpabuf_len(%struct.wpabuf* %38)
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [2 x i64], [2 x i64]* %11, i64 0, i64 0
  store i64 %40, i64* %41, align 16
  %42 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %43 = call i32* @wpabuf_head(%struct.wpabuf* %42)
  %44 = getelementptr inbounds [2 x i32*], [2 x i32*]* %10, i64 0, i64 1
  store i32* %43, i32** %44, align 8
  %45 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %46 = call i32 @wpabuf_len(%struct.wpabuf* %45)
  %47 = sub nsw i32 %46, 4
  %48 = load i32, i32* @WPS_AUTHENTICATOR_LEN, align 4
  %49 = sub nsw i32 %47, %48
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [2 x i64], [2 x i64]* %11, i64 0, i64 1
  store i64 %50, i64* %51, align 8
  %52 = load %struct.wps_data*, %struct.wps_data** %5, align 8
  %53 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @WPS_AUTHKEY_LEN, align 4
  %56 = getelementptr inbounds [2 x i32*], [2 x i32*]* %10, i64 0, i64 0
  %57 = getelementptr inbounds [2 x i64], [2 x i64]* %11, i64 0, i64 0
  %58 = call i32 @hmac_sha256_vector(i32 %54, i32 %55, i32 2, i32** %56, i64* %57, i32* %16)
  %59 = load i32*, i32** %6, align 8
  %60 = load i32, i32* @WPS_AUTHENTICATOR_LEN, align 4
  %61 = call i64 @os_memcmp(i32* %16, i32* %59, i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %30
  %64 = load i32, i32* @MSG_DEBUG, align 4
  %65 = call i32 @wpa_printf(i32 %64, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %67

66:                                               ; preds = %30
  store i32 0, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %67

67:                                               ; preds = %66, %63, %27, %19
  %68 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %68)
  %69 = load i32, i32* %4, align 4
  ret i32 %69
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @wpa_printf(i32, i8*) #2

declare dso_local i32* @wpabuf_head(%struct.wpabuf*) #2

declare dso_local i32 @wpabuf_len(%struct.wpabuf*) #2

declare dso_local i32 @hmac_sha256_vector(i32, i32, i32, i32**, i64*, i32*) #2

declare dso_local i64 @os_memcmp(i32*, i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/wps/extr_wps_attr_process.c_wps_process_key_wrap_auth.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/wps/extr_wps_attr_process.c_wps_process_key_wrap_auth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wps_data = type { i32 }
%struct.wpabuf = type { i32 }

@SHA256_MAC_LEN = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"WPS: No KWA in decrypted attribute\00", align 1
@WPS_KWA_LEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"WPS: KWA not in the end of the decrypted attribute\00", align 1
@WPS_AUTHKEY_LEN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"WPS: Invalid KWA\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wps_process_key_wrap_auth(%struct.wps_data* %0, %struct.wpabuf* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.wps_data*, align 8
  %6 = alloca %struct.wpabuf*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.wps_data* %0, %struct.wps_data** %5, align 8
  store %struct.wpabuf* %1, %struct.wpabuf** %6, align 8
  store i32* %2, i32** %7, align 8
  %13 = load i32, i32* @SHA256_MAC_LEN, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %8, align 8
  %16 = alloca i32, i64 %14, align 16
  store i64 %14, i64* %9, align 8
  %17 = load i32*, i32** %7, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %3
  %20 = load i32, i32* @MSG_DEBUG, align 4
  %21 = call i32 @wpa_printf(i32 %20, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %56

22:                                               ; preds = %3
  %23 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %24 = call i32* @wpabuf_head(%struct.wpabuf* %23)
  store i32* %24, i32** %10, align 8
  %25 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %26 = call i32 @wpabuf_len(%struct.wpabuf* %25)
  %27 = sub nsw i32 %26, 4
  %28 = load i32, i32* @WPS_KWA_LEN, align 4
  %29 = sub nsw i32 %27, %28
  %30 = sext i32 %29 to i64
  store i64 %30, i64* %11, align 8
  %31 = load i32*, i32** %10, align 8
  %32 = load i64, i64* %11, align 8
  %33 = getelementptr inbounds i32, i32* %31, i64 %32
  %34 = load i32*, i32** %7, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 -4
  %36 = icmp ne i32* %33, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %22
  %38 = load i32, i32* @MSG_DEBUG, align 4
  %39 = call i32 @wpa_printf(i32 %38, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %56

40:                                               ; preds = %22
  %41 = load %struct.wps_data*, %struct.wps_data** %5, align 8
  %42 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @WPS_AUTHKEY_LEN, align 4
  %45 = load i32*, i32** %10, align 8
  %46 = load i64, i64* %11, align 8
  %47 = call i32 @hmac_sha256(i32 %43, i32 %44, i32* %45, i64 %46, i32* %16)
  %48 = load i32*, i32** %7, align 8
  %49 = load i32, i32* @WPS_KWA_LEN, align 4
  %50 = call i64 @os_memcmp(i32* %16, i32* %48, i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %40
  %53 = load i32, i32* @MSG_DEBUG, align 4
  %54 = call i32 @wpa_printf(i32 %53, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %56

55:                                               ; preds = %40
  store i32 0, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %56

56:                                               ; preds = %55, %52, %37, %19
  %57 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %57)
  %58 = load i32, i32* %4, align 4
  ret i32 %58
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @wpa_printf(i32, i8*) #2

declare dso_local i32* @wpabuf_head(%struct.wpabuf*) #2

declare dso_local i32 @wpabuf_len(%struct.wpabuf*) #2

declare dso_local i32 @hmac_sha256(i32, i32, i32*, i64, i32*) #2

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

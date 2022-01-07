; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/wps/extr_wps_common.c_wps_decrypt_encr_settings.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/wps/extr_wps_common.c_wps_decrypt_encr_settings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i64 }
%struct.wps_data = type { i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"WPS: No Encrypted Settings received\00", align 1
@MSG_MSGDUMP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"WPS: Encrypted Settings\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"WPS: AES Decrypt setting\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"WPS: Decrypted Encrypted Settings\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"WPS: Invalid PKCS#5 v2.0 pad value\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"WPS: Invalid PKCS#5 v2.0 pad string\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.wpabuf* @wps_decrypt_encr_settings(%struct.wps_data* %0, i64* %1, i64 %2) #0 {
  %4 = alloca %struct.wpabuf*, align 8
  %5 = alloca %struct.wps_data*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.wpabuf*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64*, align 8
  store %struct.wps_data* %0, %struct.wps_data** %5, align 8
  store i64* %1, i64** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 16, i64* %9, align 8
  %13 = load i64*, i64** %6, align 8
  %14 = icmp eq i64* %13, null
  br i1 %14, label %22, label %15

15:                                               ; preds = %3
  %16 = load i64, i64* %7, align 8
  %17 = icmp ult i64 %16, 32
  br i1 %17, label %22, label %18

18:                                               ; preds = %15
  %19 = load i64, i64* %7, align 8
  %20 = urem i64 %19, 16
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %18, %15, %3
  %23 = load i32, i32* @MSG_DEBUG, align 4
  %24 = call i32 @wpa_printf(i32 %23, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  store %struct.wpabuf* null, %struct.wpabuf** %4, align 8
  br label %106

25:                                               ; preds = %18
  %26 = load i64, i64* %7, align 8
  %27 = sub i64 %26, 16
  %28 = call %struct.wpabuf* @wpabuf_alloc(i64 %27)
  store %struct.wpabuf* %28, %struct.wpabuf** %8, align 8
  %29 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %30 = icmp eq %struct.wpabuf* %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  store %struct.wpabuf* null, %struct.wpabuf** %4, align 8
  br label %106

32:                                               ; preds = %25
  %33 = load i32, i32* @MSG_MSGDUMP, align 4
  %34 = load i64*, i64** %6, align 8
  %35 = load i64, i64* %7, align 8
  %36 = call i32 @wpa_hexdump(i32 %33, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i64* %34, i64 %35)
  %37 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %38 = load i64*, i64** %6, align 8
  %39 = getelementptr inbounds i64, i64* %38, i64 16
  %40 = load i64, i64* %7, align 8
  %41 = sub i64 %40, 16
  %42 = call i32 @wpabuf_put_data(%struct.wpabuf* %37, i64* %39, i64 %41)
  %43 = load i32, i32* @MSG_DEBUG, align 4
  %44 = call i32 @wpa_printf(i32 %43, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %45 = load %struct.wps_data*, %struct.wps_data** %5, align 8
  %46 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i64*, i64** %6, align 8
  %49 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %50 = call i32 @wpabuf_mhead(%struct.wpabuf* %49)
  %51 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %52 = call i64 @wpabuf_len(%struct.wpabuf* %51)
  %53 = call i64 @aes_128_cbc_decrypt(i32 %47, i64* %48, i32 %50, i64 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %32
  %56 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %57 = call i32 @wpabuf_free(%struct.wpabuf* %56)
  store %struct.wpabuf* null, %struct.wpabuf** %4, align 8
  br label %106

58:                                               ; preds = %32
  %59 = load i32, i32* @MSG_MSGDUMP, align 4
  %60 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %61 = call i32 @wpa_hexdump_buf_key(i32 %59, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), %struct.wpabuf* %60)
  %62 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %63 = call i64* @wpabuf_head_u8(%struct.wpabuf* %62)
  %64 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %65 = call i64 @wpabuf_len(%struct.wpabuf* %64)
  %66 = getelementptr inbounds i64, i64* %63, i64 %65
  %67 = getelementptr inbounds i64, i64* %66, i64 -1
  store i64* %67, i64** %12, align 8
  %68 = load i64*, i64** %12, align 8
  %69 = load i64, i64* %68, align 8
  store i64 %69, i64* %11, align 8
  %70 = load i64, i64* %11, align 8
  %71 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %72 = call i64 @wpabuf_len(%struct.wpabuf* %71)
  %73 = icmp ugt i64 %70, %72
  br i1 %73, label %74, label %79

74:                                               ; preds = %58
  %75 = load i32, i32* @MSG_DEBUG, align 4
  %76 = call i32 @wpa_printf(i32 %75, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0))
  %77 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %78 = call i32 @wpabuf_free(%struct.wpabuf* %77)
  store %struct.wpabuf* null, %struct.wpabuf** %4, align 8
  br label %106

79:                                               ; preds = %58
  store i64 0, i64* %10, align 8
  br label %80

80:                                               ; preds = %96, %79
  %81 = load i64, i64* %10, align 8
  %82 = load i64, i64* %11, align 8
  %83 = icmp ult i64 %81, %82
  br i1 %83, label %84, label %99

84:                                               ; preds = %80
  %85 = load i64*, i64** %12, align 8
  %86 = getelementptr inbounds i64, i64* %85, i32 -1
  store i64* %86, i64** %12, align 8
  %87 = load i64, i64* %85, align 8
  %88 = load i64, i64* %11, align 8
  %89 = icmp ne i64 %87, %88
  br i1 %89, label %90, label %95

90:                                               ; preds = %84
  %91 = load i32, i32* @MSG_DEBUG, align 4
  %92 = call i32 @wpa_printf(i32 %91, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0))
  %93 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %94 = call i32 @wpabuf_free(%struct.wpabuf* %93)
  store %struct.wpabuf* null, %struct.wpabuf** %4, align 8
  br label %106

95:                                               ; preds = %84
  br label %96

96:                                               ; preds = %95
  %97 = load i64, i64* %10, align 8
  %98 = add i64 %97, 1
  store i64 %98, i64* %10, align 8
  br label %80

99:                                               ; preds = %80
  %100 = load i64, i64* %11, align 8
  %101 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %102 = getelementptr inbounds %struct.wpabuf, %struct.wpabuf* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = sub i64 %103, %100
  store i64 %104, i64* %102, align 8
  %105 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  store %struct.wpabuf* %105, %struct.wpabuf** %4, align 8
  br label %106

106:                                              ; preds = %99, %90, %74, %55, %31, %22
  %107 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  ret %struct.wpabuf* %107
}

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local %struct.wpabuf* @wpabuf_alloc(i64) #1

declare dso_local i32 @wpa_hexdump(i32, i8*, i64*, i64) #1

declare dso_local i32 @wpabuf_put_data(%struct.wpabuf*, i64*, i64) #1

declare dso_local i64 @aes_128_cbc_decrypt(i32, i64*, i32, i64) #1

declare dso_local i32 @wpabuf_mhead(%struct.wpabuf*) #1

declare dso_local i64 @wpabuf_len(%struct.wpabuf*) #1

declare dso_local i32 @wpabuf_free(%struct.wpabuf*) #1

declare dso_local i32 @wpa_hexdump_buf_key(i32, i8*, %struct.wpabuf*) #1

declare dso_local i64* @wpabuf_head_u8(%struct.wpabuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

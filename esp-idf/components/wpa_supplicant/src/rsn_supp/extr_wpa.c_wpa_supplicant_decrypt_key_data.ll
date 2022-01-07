; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/rsn_supp/extr_wpa.c_wpa_supplicant_decrypt_key_data.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/rsn_supp/extr_wpa.c_wpa_supplicant_decrypt_key_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_sm = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { %struct.wpa_eapol_key* }
%struct.wpa_eapol_key = type { i32, %struct.wpa_eapol_key* }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"RSN: encrypted key data\00", align 1
@WPA_KEY_INFO_TYPE_HMAC_MD5_RC4 = common dso_local global i32 0, align 4
@WPA_KEY_INFO_TYPE_HMAC_SHA1_AES = common dso_local global i32 0, align 4
@WPA_KEY_INFO_TYPE_AES_128_CMAC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"WPA: decrypted EAPOL-Key key data\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wpa_supplicant_decrypt_key_data(%struct.wpa_sm* %0, %struct.wpa_eapol_key* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.wpa_sm*, align 8
  %6 = alloca %struct.wpa_eapol_key*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [32 x %struct.wpa_eapol_key], align 16
  %10 = alloca %struct.wpa_eapol_key*, align 8
  store %struct.wpa_sm* %0, %struct.wpa_sm** %5, align 8
  store %struct.wpa_eapol_key* %1, %struct.wpa_eapol_key** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.wpa_eapol_key*, %struct.wpa_eapol_key** %6, align 8
  %12 = getelementptr inbounds %struct.wpa_eapol_key, %struct.wpa_eapol_key* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @WPA_GET_BE16(i32 %13)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* @MSG_DEBUG, align 4
  %16 = load %struct.wpa_eapol_key*, %struct.wpa_eapol_key** %6, align 8
  %17 = getelementptr inbounds %struct.wpa_eapol_key, %struct.wpa_eapol_key* %16, i64 1
  %18 = load i32, i32* %8, align 4
  %19 = call i32 @wpa_hexdump(i32 %15, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), %struct.wpa_eapol_key* %17, i32 %18)
  %20 = load %struct.wpa_sm*, %struct.wpa_sm** %5, align 8
  %21 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %100

25:                                               ; preds = %3
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @WPA_KEY_INFO_TYPE_HMAC_MD5_RC4, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %50

29:                                               ; preds = %25
  %30 = getelementptr inbounds [32 x %struct.wpa_eapol_key], [32 x %struct.wpa_eapol_key]* %9, i64 0, i64 0
  %31 = load %struct.wpa_eapol_key*, %struct.wpa_eapol_key** %6, align 8
  %32 = getelementptr inbounds %struct.wpa_eapol_key, %struct.wpa_eapol_key* %31, i32 0, i32 1
  %33 = load %struct.wpa_eapol_key*, %struct.wpa_eapol_key** %32, align 8
  %34 = call i32 @memcpy(%struct.wpa_eapol_key* %30, %struct.wpa_eapol_key* %33, i32 16)
  %35 = getelementptr inbounds [32 x %struct.wpa_eapol_key], [32 x %struct.wpa_eapol_key]* %9, i64 0, i64 0
  %36 = getelementptr inbounds %struct.wpa_eapol_key, %struct.wpa_eapol_key* %35, i64 16
  %37 = load %struct.wpa_sm*, %struct.wpa_sm** %5, align 8
  %38 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load %struct.wpa_eapol_key*, %struct.wpa_eapol_key** %39, align 8
  %41 = call i32 @memcpy(%struct.wpa_eapol_key* %36, %struct.wpa_eapol_key* %40, i32 16)
  %42 = getelementptr inbounds [32 x %struct.wpa_eapol_key], [32 x %struct.wpa_eapol_key]* %9, i64 0, i64 0
  %43 = load %struct.wpa_eapol_key*, %struct.wpa_eapol_key** %6, align 8
  %44 = getelementptr inbounds %struct.wpa_eapol_key, %struct.wpa_eapol_key* %43, i64 1
  %45 = load i32, i32* %8, align 4
  %46 = call i64 @rc4_skip(%struct.wpa_eapol_key* %42, i32 32, i32 256, %struct.wpa_eapol_key* %44, i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %29
  store i32 -1, i32* %4, align 4
  br label %100

49:                                               ; preds = %29
  br label %94

50:                                               ; preds = %25
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* @WPA_KEY_INFO_TYPE_HMAC_SHA1_AES, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %58, label %54

54:                                               ; preds = %50
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* @WPA_KEY_INFO_TYPE_AES_128_CMAC, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %92

58:                                               ; preds = %54, %50
  %59 = load i32, i32* %8, align 4
  %60 = srem i32 %59, 8
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %58
  store i32 -1, i32* %4, align 4
  br label %100

63:                                               ; preds = %58
  %64 = load i32, i32* %8, align 4
  %65 = sub nsw i32 %64, 8
  store i32 %65, i32* %8, align 4
  %66 = load %struct.wpa_eapol_key*, %struct.wpa_eapol_key** %6, align 8
  %67 = getelementptr inbounds %struct.wpa_eapol_key, %struct.wpa_eapol_key* %66, i64 1
  %68 = getelementptr inbounds %struct.wpa_eapol_key, %struct.wpa_eapol_key* %67, i64 8
  store %struct.wpa_eapol_key* %68, %struct.wpa_eapol_key** %10, align 8
  %69 = load %struct.wpa_sm*, %struct.wpa_sm** %5, align 8
  %70 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load %struct.wpa_eapol_key*, %struct.wpa_eapol_key** %71, align 8
  %73 = load i32, i32* %8, align 4
  %74 = sdiv i32 %73, 8
  %75 = load %struct.wpa_eapol_key*, %struct.wpa_eapol_key** %6, align 8
  %76 = getelementptr inbounds %struct.wpa_eapol_key, %struct.wpa_eapol_key* %75, i64 1
  %77 = load %struct.wpa_eapol_key*, %struct.wpa_eapol_key** %10, align 8
  %78 = call i64 @aes_unwrap(%struct.wpa_eapol_key* %72, i32 %74, %struct.wpa_eapol_key* %76, %struct.wpa_eapol_key* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %63
  store i32 -1, i32* %4, align 4
  br label %100

81:                                               ; preds = %63
  %82 = load %struct.wpa_eapol_key*, %struct.wpa_eapol_key** %6, align 8
  %83 = getelementptr inbounds %struct.wpa_eapol_key, %struct.wpa_eapol_key* %82, i64 1
  %84 = load %struct.wpa_eapol_key*, %struct.wpa_eapol_key** %10, align 8
  %85 = load i32, i32* %8, align 4
  %86 = call i32 @memcpy(%struct.wpa_eapol_key* %83, %struct.wpa_eapol_key* %84, i32 %85)
  %87 = load %struct.wpa_eapol_key*, %struct.wpa_eapol_key** %6, align 8
  %88 = getelementptr inbounds %struct.wpa_eapol_key, %struct.wpa_eapol_key* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* %8, align 4
  %91 = call i32 @WPA_PUT_BE16(i32 %89, i32 %90)
  br label %93

92:                                               ; preds = %54
  store i32 -1, i32* %4, align 4
  br label %100

93:                                               ; preds = %81
  br label %94

94:                                               ; preds = %93, %49
  %95 = load i32, i32* @MSG_DEBUG, align 4
  %96 = load %struct.wpa_eapol_key*, %struct.wpa_eapol_key** %6, align 8
  %97 = getelementptr inbounds %struct.wpa_eapol_key, %struct.wpa_eapol_key* %96, i64 1
  %98 = load i32, i32* %8, align 4
  %99 = call i32 @wpa_hexdump(i32 %95, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), %struct.wpa_eapol_key* %97, i32 %98)
  store i32 0, i32* %4, align 4
  br label %100

100:                                              ; preds = %94, %92, %80, %62, %48, %24
  %101 = load i32, i32* %4, align 4
  ret i32 %101
}

declare dso_local i32 @WPA_GET_BE16(i32) #1

declare dso_local i32 @wpa_hexdump(i32, i8*, %struct.wpa_eapol_key*, i32) #1

declare dso_local i32 @memcpy(%struct.wpa_eapol_key*, %struct.wpa_eapol_key*, i32) #1

declare dso_local i64 @rc4_skip(%struct.wpa_eapol_key*, i32, i32, %struct.wpa_eapol_key*, i32) #1

declare dso_local i64 @aes_unwrap(%struct.wpa_eapol_key*, i32, %struct.wpa_eapol_key*, %struct.wpa_eapol_key*) #1

declare dso_local i32 @WPA_PUT_BE16(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

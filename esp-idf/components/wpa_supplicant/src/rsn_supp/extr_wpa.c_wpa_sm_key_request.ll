; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/rsn_supp/extr_wpa.c_wpa_sm_key_request.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/rsn_supp/extr_wpa.c_wpa_sm_key_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_sm = type { i64, i64, %struct.TYPE_2__, i64, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.wpa_eapol_key = type { i32*, i32, i32, i32, i32, i32 }

@ETH_ALEN = common dso_local global i32 0, align 4
@WPA_KEY_INFO_TYPE_AES_128_CMAC = common dso_local global i32 0, align 4
@WPA_CIPHER_CCMP = common dso_local global i64 0, align 8
@WPA_KEY_INFO_TYPE_HMAC_SHA1_AES = common dso_local global i32 0, align 4
@WPA_KEY_INFO_TYPE_HMAC_MD5_RC4 = common dso_local global i32 0, align 4
@IEEE802_1X_TYPE_EAPOL_KEY = common dso_local global i32 0, align 4
@WPA_PROTO_RSN = common dso_local global i64 0, align 8
@EAPOL_KEY_TYPE_RSN = common dso_local global i32 0, align 4
@EAPOL_KEY_TYPE_WPA = common dso_local global i32 0, align 4
@WPA_KEY_INFO_REQUEST = common dso_local global i32 0, align 4
@WPA_KEY_INFO_MIC = common dso_local global i32 0, align 4
@WPA_KEY_INFO_ERROR = common dso_local global i32 0, align 4
@WPA_KEY_INFO_SECURE = common dso_local global i32 0, align 4
@WPA_KEY_INFO_KEY_TYPE = common dso_local global i32 0, align 4
@WPA_REPLAY_COUNTER_LEN = common dso_local global i32 0, align 4
@ETH_P_EAPOL = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wpa_sm_key_request(%struct.wpa_sm* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.wpa_sm*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.wpa_eapol_key*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  store %struct.wpa_sm* %0, %struct.wpa_sm** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %15 = load i32, i32* @ETH_ALEN, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %11, align 8
  %18 = alloca i32, i64 %16, align 16
  store i64 %16, i64* %12, align 8
  %19 = load %struct.wpa_sm*, %struct.wpa_sm** %4, align 8
  %20 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %19, i32 0, i32 5
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @wpa_key_mgmt_ft(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %30, label %24

24:                                               ; preds = %3
  %25 = load %struct.wpa_sm*, %struct.wpa_sm** %4, align 8
  %26 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %25, i32 0, i32 5
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @wpa_key_mgmt_sha256(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %24, %3
  %31 = load i32, i32* @WPA_KEY_INFO_TYPE_AES_128_CMAC, align 4
  store i32 %31, i32* %10, align 4
  br label %43

32:                                               ; preds = %24
  %33 = load %struct.wpa_sm*, %struct.wpa_sm** %4, align 8
  %34 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @WPA_CIPHER_CCMP, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %32
  %39 = load i32, i32* @WPA_KEY_INFO_TYPE_HMAC_SHA1_AES, align 4
  store i32 %39, i32* %10, align 4
  br label %42

40:                                               ; preds = %32
  %41 = load i32, i32* @WPA_KEY_INFO_TYPE_HMAC_MD5_RC4, align 4
  store i32 %41, i32* %10, align 4
  br label %42

42:                                               ; preds = %40, %38
  br label %43

43:                                               ; preds = %42, %30
  %44 = load %struct.wpa_sm*, %struct.wpa_sm** %4, align 8
  %45 = call i64 @wpa_sm_get_bssid(%struct.wpa_sm* %44, i32* %18)
  %46 = icmp slt i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %43
  store i32 1, i32* %14, align 4
  br label %147

48:                                               ; preds = %43
  %49 = load %struct.wpa_sm*, %struct.wpa_sm** %4, align 8
  %50 = load i32, i32* @IEEE802_1X_TYPE_EAPOL_KEY, align 4
  %51 = bitcast %struct.wpa_eapol_key** %8 to i8*
  %52 = call i32* @wpa_sm_alloc_eapol(%struct.wpa_sm* %49, i32 %50, i32* null, i32 32, i64* %7, i8* %51)
  store i32* %52, i32** %13, align 8
  %53 = load i32*, i32** %13, align 8
  %54 = icmp eq i32* %53, null
  br i1 %54, label %55, label %56

55:                                               ; preds = %48
  store i32 1, i32* %14, align 4
  br label %147

56:                                               ; preds = %48
  %57 = load %struct.wpa_sm*, %struct.wpa_sm** %4, align 8
  %58 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @WPA_PROTO_RSN, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %56
  %63 = load i32, i32* @EAPOL_KEY_TYPE_RSN, align 4
  br label %66

64:                                               ; preds = %56
  %65 = load i32, i32* @EAPOL_KEY_TYPE_WPA, align 4
  br label %66

66:                                               ; preds = %64, %62
  %67 = phi i32 [ %63, %62 ], [ %65, %64 ]
  %68 = load %struct.wpa_eapol_key*, %struct.wpa_eapol_key** %8, align 8
  %69 = getelementptr inbounds %struct.wpa_eapol_key, %struct.wpa_eapol_key* %68, i32 0, i32 5
  store i32 %67, i32* %69, align 8
  %70 = load i32, i32* @WPA_KEY_INFO_REQUEST, align 4
  %71 = load i32, i32* %10, align 4
  %72 = or i32 %70, %71
  store i32 %72, i32* %9, align 4
  %73 = load %struct.wpa_sm*, %struct.wpa_sm** %4, align 8
  %74 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %73, i32 0, i32 3
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %66
  %78 = load i32, i32* @WPA_KEY_INFO_MIC, align 4
  %79 = load i32, i32* %9, align 4
  %80 = or i32 %79, %78
  store i32 %80, i32* %9, align 4
  br label %81

81:                                               ; preds = %77, %66
  %82 = load i32, i32* %5, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %90

84:                                               ; preds = %81
  %85 = load i32, i32* @WPA_KEY_INFO_ERROR, align 4
  %86 = load i32, i32* @WPA_KEY_INFO_SECURE, align 4
  %87 = or i32 %85, %86
  %88 = load i32, i32* %9, align 4
  %89 = or i32 %88, %87
  store i32 %89, i32* %9, align 4
  br label %90

90:                                               ; preds = %84, %81
  %91 = load i32, i32* %6, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %90
  %94 = load i32, i32* @WPA_KEY_INFO_KEY_TYPE, align 4
  %95 = load i32, i32* %9, align 4
  %96 = or i32 %95, %94
  store i32 %96, i32* %9, align 4
  br label %97

97:                                               ; preds = %93, %90
  %98 = load %struct.wpa_eapol_key*, %struct.wpa_eapol_key** %8, align 8
  %99 = getelementptr inbounds %struct.wpa_eapol_key, %struct.wpa_eapol_key* %98, i32 0, i32 4
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* %9, align 4
  %102 = call i32 @WPA_PUT_BE16(i32 %100, i32 %101)
  %103 = load %struct.wpa_eapol_key*, %struct.wpa_eapol_key** %8, align 8
  %104 = getelementptr inbounds %struct.wpa_eapol_key, %struct.wpa_eapol_key* %103, i32 0, i32 3
  %105 = load i32, i32* %104, align 8
  %106 = call i32 @WPA_PUT_BE16(i32 %105, i32 0)
  %107 = load %struct.wpa_eapol_key*, %struct.wpa_eapol_key** %8, align 8
  %108 = getelementptr inbounds %struct.wpa_eapol_key, %struct.wpa_eapol_key* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.wpa_sm*, %struct.wpa_sm** %4, align 8
  %111 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %110, i32 0, i32 4
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* @WPA_REPLAY_COUNTER_LEN, align 4
  %114 = call i32 @memcpy(i32 %109, i32 %112, i32 %113)
  %115 = load %struct.wpa_sm*, %struct.wpa_sm** %4, align 8
  %116 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %115, i32 0, i32 4
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* @WPA_REPLAY_COUNTER_LEN, align 4
  %119 = call i32 @inc_byte_array(i32 %117, i32 %118)
  %120 = load %struct.wpa_eapol_key*, %struct.wpa_eapol_key** %8, align 8
  %121 = getelementptr inbounds %struct.wpa_eapol_key, %struct.wpa_eapol_key* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 8
  %123 = call i32 @WPA_PUT_BE16(i32 %122, i32 0)
  %124 = load %struct.wpa_sm*, %struct.wpa_sm** %4, align 8
  %125 = load %struct.wpa_sm*, %struct.wpa_sm** %4, align 8
  %126 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %125, i32 0, i32 2
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = load i32, i32* %10, align 4
  %130 = load i32, i32* @ETH_P_EAPOL, align 4
  %131 = load i32*, i32** %13, align 8
  %132 = load i64, i64* %7, align 8
  %133 = load i32, i32* %9, align 4
  %134 = load i32, i32* @WPA_KEY_INFO_MIC, align 4
  %135 = and i32 %133, %134
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %141

137:                                              ; preds = %97
  %138 = load %struct.wpa_eapol_key*, %struct.wpa_eapol_key** %8, align 8
  %139 = getelementptr inbounds %struct.wpa_eapol_key, %struct.wpa_eapol_key* %138, i32 0, i32 0
  %140 = load i32*, i32** %139, align 8
  br label %142

141:                                              ; preds = %97
  br label %142

142:                                              ; preds = %141, %137
  %143 = phi i32* [ %140, %137 ], [ null, %141 ]
  %144 = call i32 @wpa_eapol_key_send(%struct.wpa_sm* %124, i32 %128, i32 %129, i32* %18, i32 %130, i32* %131, i64 %132, i32* %143)
  %145 = load i32*, i32** %13, align 8
  %146 = call i32 @wpa_sm_free_eapol(i32* %145)
  store i32 0, i32* %14, align 4
  br label %147

147:                                              ; preds = %142, %55, %47
  %148 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %148)
  %149 = load i32, i32* %14, align 4
  switch i32 %149, label %151 [
    i32 0, label %150
    i32 1, label %150
  ]

150:                                              ; preds = %147, %147
  ret void

151:                                              ; preds = %147
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @wpa_key_mgmt_ft(i32) #2

declare dso_local i64 @wpa_key_mgmt_sha256(i32) #2

declare dso_local i64 @wpa_sm_get_bssid(%struct.wpa_sm*, i32*) #2

declare dso_local i32* @wpa_sm_alloc_eapol(%struct.wpa_sm*, i32, i32*, i32, i64*, i8*) #2

declare dso_local i32 @WPA_PUT_BE16(i32, i32) #2

declare dso_local i32 @memcpy(i32, i32, i32) #2

declare dso_local i32 @inc_byte_array(i32, i32) #2

declare dso_local i32 @wpa_eapol_key_send(%struct.wpa_sm*, i32, i32, i32*, i32, i32*, i64, i32*) #2

declare dso_local i32 @wpa_sm_free_eapol(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

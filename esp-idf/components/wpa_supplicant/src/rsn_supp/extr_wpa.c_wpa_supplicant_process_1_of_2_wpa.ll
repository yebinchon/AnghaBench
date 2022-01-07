; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/rsn_supp/extr_wpa.c_wpa_supplicant_process_1_of_2_wpa.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/rsn_supp/extr_wpa.c_wpa_supplicant_process_1_of_2_wpa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_sm = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { %struct.wpa_eapol_key* }
%struct.wpa_eapol_key = type { %struct.wpa_eapol_key*, i32 }
%struct.wpa_gtk_data = type { i32, i32, i32*, i32, i32, i32 }

@WPA_KEY_INFO_TYPE_HMAC_SHA1_AES = common dso_local global i64 0, align 8
@WPA_KEY_INFO_KEY_INDEX_MASK = common dso_local global i32 0, align 4
@WPA_KEY_INFO_KEY_INDEX_SHIFT = common dso_local global i32 0, align 4
@WPA_KEY_INFO_TYPE_HMAC_MD5_RC4 = common dso_local global i64 0, align 8
@WPA_KEY_INFO_TXRX = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wpa_supplicant_process_1_of_2_wpa(%struct.wpa_sm* %0, %struct.wpa_eapol_key* %1, i64 %2, i32 %3, i64 %4, i64 %5, %struct.wpa_gtk_data* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.wpa_sm*, align 8
  %10 = alloca %struct.wpa_eapol_key*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.wpa_gtk_data*, align 8
  %16 = alloca i64, align 8
  %17 = alloca [32 x i32], align 16
  store %struct.wpa_sm* %0, %struct.wpa_sm** %9, align 8
  store %struct.wpa_eapol_key* %1, %struct.wpa_eapol_key** %10, align 8
  store i64 %2, i64* %11, align 8
  store i32 %3, i32* %12, align 4
  store i64 %4, i64* %13, align 8
  store i64 %5, i64* %14, align 8
  store %struct.wpa_gtk_data* %6, %struct.wpa_gtk_data** %15, align 8
  %18 = load %struct.wpa_eapol_key*, %struct.wpa_eapol_key** %10, align 8
  %19 = getelementptr inbounds %struct.wpa_eapol_key, %struct.wpa_eapol_key* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @WPA_GET_BE16(i32 %20)
  %22 = load %struct.wpa_gtk_data*, %struct.wpa_gtk_data** %15, align 8
  %23 = getelementptr inbounds %struct.wpa_gtk_data, %struct.wpa_gtk_data* %22, i32 0, i32 5
  store i32 %21, i32* %23, align 8
  %24 = load i64, i64* %11, align 8
  store i64 %24, i64* %16, align 8
  %25 = load i64, i64* %11, align 8
  %26 = load i64, i64* %13, align 8
  %27 = icmp ugt i64 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %7
  store i32 -1, i32* %8, align 4
  br label %143

29:                                               ; preds = %7
  %30 = load i64, i64* %14, align 8
  %31 = load i64, i64* @WPA_KEY_INFO_TYPE_HMAC_SHA1_AES, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %40

33:                                               ; preds = %29
  %34 = load i64, i64* %16, align 8
  %35 = icmp ult i64 %34, 8
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  store i32 -1, i32* %8, align 4
  br label %143

37:                                               ; preds = %33
  %38 = load i64, i64* %16, align 8
  %39 = sub i64 %38, 8
  store i64 %39, i64* %16, align 8
  br label %40

40:                                               ; preds = %37, %29
  %41 = load %struct.wpa_sm*, %struct.wpa_sm** %9, align 8
  %42 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.wpa_gtk_data*, %struct.wpa_gtk_data** %15, align 8
  %45 = getelementptr inbounds %struct.wpa_gtk_data, %struct.wpa_gtk_data* %44, i32 0, i32 5
  %46 = load i32, i32* %45, align 8
  %47 = load i64, i64* %16, align 8
  %48 = load %struct.wpa_gtk_data*, %struct.wpa_gtk_data** %15, align 8
  %49 = getelementptr inbounds %struct.wpa_gtk_data, %struct.wpa_gtk_data* %48, i32 0, i32 4
  %50 = load %struct.wpa_gtk_data*, %struct.wpa_gtk_data** %15, align 8
  %51 = getelementptr inbounds %struct.wpa_gtk_data, %struct.wpa_gtk_data* %50, i32 0, i32 3
  %52 = call i64 @wpa_supplicant_check_group_cipher(i32 %43, i32 %46, i64 %47, i32* %49, i32* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %40
  store i32 -1, i32* %8, align 4
  br label %143

55:                                               ; preds = %40
  %56 = load i32, i32* %12, align 4
  %57 = load i32, i32* @WPA_KEY_INFO_KEY_INDEX_MASK, align 4
  %58 = and i32 %56, %57
  %59 = load i32, i32* @WPA_KEY_INFO_KEY_INDEX_SHIFT, align 4
  %60 = ashr i32 %58, %59
  %61 = load %struct.wpa_gtk_data*, %struct.wpa_gtk_data** %15, align 8
  %62 = getelementptr inbounds %struct.wpa_gtk_data, %struct.wpa_gtk_data* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 8
  %63 = load i64, i64* %14, align 8
  %64 = load i64, i64* @WPA_KEY_INFO_TYPE_HMAC_MD5_RC4, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %99

66:                                               ; preds = %55
  %67 = getelementptr inbounds [32 x i32], [32 x i32]* %17, i64 0, i64 0
  %68 = load %struct.wpa_eapol_key*, %struct.wpa_eapol_key** %10, align 8
  %69 = getelementptr inbounds %struct.wpa_eapol_key, %struct.wpa_eapol_key* %68, i32 0, i32 0
  %70 = load %struct.wpa_eapol_key*, %struct.wpa_eapol_key** %69, align 8
  %71 = call i32 @memcpy(i32* %67, %struct.wpa_eapol_key* %70, i64 16)
  %72 = getelementptr inbounds [32 x i32], [32 x i32]* %17, i64 0, i64 0
  %73 = getelementptr inbounds i32, i32* %72, i64 16
  %74 = load %struct.wpa_sm*, %struct.wpa_sm** %9, align 8
  %75 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load %struct.wpa_eapol_key*, %struct.wpa_eapol_key** %76, align 8
  %78 = call i32 @memcpy(i32* %73, %struct.wpa_eapol_key* %77, i64 16)
  %79 = load i64, i64* %11, align 8
  %80 = icmp ugt i64 %79, 8
  br i1 %80, label %81, label %82

81:                                               ; preds = %66
  store i32 -1, i32* %8, align 4
  br label %143

82:                                               ; preds = %66
  %83 = load %struct.wpa_gtk_data*, %struct.wpa_gtk_data** %15, align 8
  %84 = getelementptr inbounds %struct.wpa_gtk_data, %struct.wpa_gtk_data* %83, i32 0, i32 2
  %85 = load i32*, i32** %84, align 8
  %86 = load %struct.wpa_eapol_key*, %struct.wpa_eapol_key** %10, align 8
  %87 = getelementptr inbounds %struct.wpa_eapol_key, %struct.wpa_eapol_key* %86, i64 1
  %88 = load i64, i64* %11, align 8
  %89 = call i32 @memcpy(i32* %85, %struct.wpa_eapol_key* %87, i64 %88)
  %90 = getelementptr inbounds [32 x i32], [32 x i32]* %17, i64 0, i64 0
  %91 = load %struct.wpa_gtk_data*, %struct.wpa_gtk_data** %15, align 8
  %92 = getelementptr inbounds %struct.wpa_gtk_data, %struct.wpa_gtk_data* %91, i32 0, i32 2
  %93 = load i32*, i32** %92, align 8
  %94 = load i64, i64* %11, align 8
  %95 = call i64 @rc4_skip(i32* %90, i32 32, i32 256, i32* %93, i64 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %82
  store i32 -1, i32* %8, align 4
  br label %143

98:                                               ; preds = %82
  br label %131

99:                                               ; preds = %55
  %100 = load i64, i64* %14, align 8
  %101 = load i64, i64* @WPA_KEY_INFO_TYPE_HMAC_SHA1_AES, align 8
  %102 = icmp eq i64 %100, %101
  br i1 %102, label %103, label %129

103:                                              ; preds = %99
  %104 = load i64, i64* %11, align 8
  %105 = urem i64 %104, 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %103
  store i32 -1, i32* %8, align 4
  br label %143

108:                                              ; preds = %103
  %109 = load i64, i64* %16, align 8
  %110 = icmp ugt i64 %109, 8
  br i1 %110, label %111, label %112

111:                                              ; preds = %108
  store i32 -1, i32* %8, align 4
  br label %143

112:                                              ; preds = %108
  %113 = load %struct.wpa_sm*, %struct.wpa_sm** %9, align 8
  %114 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 0
  %116 = load %struct.wpa_eapol_key*, %struct.wpa_eapol_key** %115, align 8
  %117 = load i64, i64* %16, align 8
  %118 = udiv i64 %117, 8
  %119 = load %struct.wpa_eapol_key*, %struct.wpa_eapol_key** %10, align 8
  %120 = getelementptr inbounds %struct.wpa_eapol_key, %struct.wpa_eapol_key* %119, i64 1
  %121 = bitcast %struct.wpa_eapol_key* %120 to i32*
  %122 = load %struct.wpa_gtk_data*, %struct.wpa_gtk_data** %15, align 8
  %123 = getelementptr inbounds %struct.wpa_gtk_data, %struct.wpa_gtk_data* %122, i32 0, i32 2
  %124 = load i32*, i32** %123, align 8
  %125 = call i64 @aes_unwrap(%struct.wpa_eapol_key* %116, i64 %118, i32* %121, i32* %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %112
  store i32 -1, i32* %8, align 4
  br label %143

128:                                              ; preds = %112
  br label %130

129:                                              ; preds = %99
  store i32 -1, i32* %8, align 4
  br label %143

130:                                              ; preds = %128
  br label %131

131:                                              ; preds = %130, %98
  %132 = load %struct.wpa_sm*, %struct.wpa_sm** %9, align 8
  %133 = load i32, i32* %12, align 4
  %134 = load i32, i32* @WPA_KEY_INFO_TXRX, align 4
  %135 = and i32 %133, %134
  %136 = icmp ne i32 %135, 0
  %137 = xor i1 %136, true
  %138 = xor i1 %137, true
  %139 = zext i1 %138 to i32
  %140 = call i32 @wpa_supplicant_gtk_tx_bit_workaround(%struct.wpa_sm* %132, i32 %139)
  %141 = load %struct.wpa_gtk_data*, %struct.wpa_gtk_data** %15, align 8
  %142 = getelementptr inbounds %struct.wpa_gtk_data, %struct.wpa_gtk_data* %141, i32 0, i32 1
  store i32 %140, i32* %142, align 4
  store i32 0, i32* %8, align 4
  br label %143

143:                                              ; preds = %131, %129, %127, %111, %107, %97, %81, %54, %36, %28
  %144 = load i32, i32* %8, align 4
  ret i32 %144
}

declare dso_local i32 @WPA_GET_BE16(i32) #1

declare dso_local i64 @wpa_supplicant_check_group_cipher(i32, i32, i64, i32*, i32*) #1

declare dso_local i32 @memcpy(i32*, %struct.wpa_eapol_key*, i64) #1

declare dso_local i64 @rc4_skip(i32*, i32, i32, i32*, i64) #1

declare dso_local i64 @aes_unwrap(%struct.wpa_eapol_key*, i64, i32*, i32*) #1

declare dso_local i32 @wpa_supplicant_gtk_tx_bit_workaround(%struct.wpa_sm*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

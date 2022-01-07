; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/rsn_supp/extr_wpa.c_wpa_supplicant_process_1_of_2_rsn.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/rsn_supp/extr_wpa.c_wpa_supplicant_process_1_of_2_rsn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_sm = type { i32 }
%struct.wpa_gtk_data = type { i32, i32, i32, i32, i32, i32 }
%struct.wpa_eapol_ie_parse = type { i32*, i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"RSN: msg 1/2 key data\00", align 1
@WPA_KEY_INFO_ENCR_KEY_DATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"RSN: received GTK in group key handshake\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wpa_supplicant_process_1_of_2_rsn(%struct.wpa_sm* %0, i32* %1, i64 %2, i32 %3, %struct.wpa_gtk_data* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.wpa_sm*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.wpa_gtk_data*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.wpa_eapol_ie_parse, align 8
  store %struct.wpa_sm* %0, %struct.wpa_sm** %7, align 8
  store i32* %1, i32** %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.wpa_gtk_data* %4, %struct.wpa_gtk_data** %11, align 8
  %14 = load i32, i32* @MSG_DEBUG, align 4
  %15 = load i32*, i32** %8, align 8
  %16 = load i64, i64* %9, align 8
  %17 = call i32 @wpa_hexdump(i32 %14, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32* %15, i64 %16)
  %18 = load i32*, i32** %8, align 8
  %19 = load i64, i64* %9, align 8
  %20 = call i32 @wpa_supplicant_parse_ies(i32* %18, i64 %19, %struct.wpa_eapol_ie_parse* %13)
  %21 = getelementptr inbounds %struct.wpa_eapol_ie_parse, %struct.wpa_eapol_ie_parse* %13, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %30

24:                                               ; preds = %5
  %25 = load i32, i32* %10, align 4
  %26 = load i32, i32* @WPA_KEY_INFO_ENCR_KEY_DATA, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %24
  store i32 -1, i32* %6, align 4
  br label %106

30:                                               ; preds = %24, %5
  %31 = getelementptr inbounds %struct.wpa_eapol_ie_parse, %struct.wpa_eapol_ie_parse* %13, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = icmp eq i32* %32, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  store i32 -1, i32* %6, align 4
  br label %106

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.wpa_eapol_ie_parse, %struct.wpa_eapol_ie_parse* %13, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = sub nsw i32 %37, 2
  %39 = load %struct.wpa_gtk_data*, %struct.wpa_gtk_data** %11, align 8
  %40 = getelementptr inbounds %struct.wpa_gtk_data, %struct.wpa_gtk_data* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 4
  store i32 %38, i32* %12, align 4
  %41 = load %struct.wpa_sm*, %struct.wpa_sm** %7, align 8
  %42 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.wpa_gtk_data*, %struct.wpa_gtk_data** %11, align 8
  %45 = getelementptr inbounds %struct.wpa_gtk_data, %struct.wpa_gtk_data* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %12, align 4
  %48 = load %struct.wpa_gtk_data*, %struct.wpa_gtk_data** %11, align 8
  %49 = getelementptr inbounds %struct.wpa_gtk_data, %struct.wpa_gtk_data* %48, i32 0, i32 5
  %50 = load %struct.wpa_gtk_data*, %struct.wpa_gtk_data** %11, align 8
  %51 = getelementptr inbounds %struct.wpa_gtk_data, %struct.wpa_gtk_data* %50, i32 0, i32 4
  %52 = call i64 @wpa_supplicant_check_group_cipher(i32 %43, i32 %46, i32 %47, i32* %49, i32* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %35
  store i32 -1, i32* %6, align 4
  br label %106

55:                                               ; preds = %35
  %56 = load i32, i32* @MSG_DEBUG, align 4
  %57 = getelementptr inbounds %struct.wpa_eapol_ie_parse, %struct.wpa_eapol_ie_parse* %13, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds %struct.wpa_eapol_ie_parse, %struct.wpa_eapol_ie_parse* %13, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = sext i32 %60 to i64
  %62 = call i32 @wpa_hexdump(i32 %56, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32* %58, i64 %61)
  %63 = getelementptr inbounds %struct.wpa_eapol_ie_parse, %struct.wpa_eapol_ie_parse* %13, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 0
  %66 = load i32, i32* %65, align 4
  %67 = and i32 %66, 3
  %68 = load %struct.wpa_gtk_data*, %struct.wpa_gtk_data** %11, align 8
  %69 = getelementptr inbounds %struct.wpa_gtk_data, %struct.wpa_gtk_data* %68, i32 0, i32 1
  store i32 %67, i32* %69, align 4
  %70 = load %struct.wpa_sm*, %struct.wpa_sm** %7, align 8
  %71 = getelementptr inbounds %struct.wpa_eapol_ie_parse, %struct.wpa_eapol_ie_parse* %13, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @BIT(i32 2)
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  %78 = xor i1 %77, true
  %79 = xor i1 %78, true
  %80 = zext i1 %79 to i32
  %81 = call i32 @wpa_supplicant_gtk_tx_bit_workaround(%struct.wpa_sm* %70, i32 %80)
  %82 = load %struct.wpa_gtk_data*, %struct.wpa_gtk_data** %11, align 8
  %83 = getelementptr inbounds %struct.wpa_gtk_data, %struct.wpa_gtk_data* %82, i32 0, i32 3
  store i32 %81, i32* %83, align 4
  %84 = getelementptr inbounds %struct.wpa_eapol_ie_parse, %struct.wpa_eapol_ie_parse* %13, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = sub nsw i32 %85, 2
  %87 = sext i32 %86 to i64
  %88 = icmp ugt i64 %87, 4
  br i1 %88, label %89, label %90

89:                                               ; preds = %55
  store i32 -1, i32* %6, align 4
  br label %106

90:                                               ; preds = %55
  %91 = load %struct.wpa_gtk_data*, %struct.wpa_gtk_data** %11, align 8
  %92 = getelementptr inbounds %struct.wpa_gtk_data, %struct.wpa_gtk_data* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  %94 = getelementptr inbounds %struct.wpa_eapol_ie_parse, %struct.wpa_eapol_ie_parse* %13, i32 0, i32 0
  %95 = load i32*, i32** %94, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 2
  %97 = getelementptr inbounds %struct.wpa_eapol_ie_parse, %struct.wpa_eapol_ie_parse* %13, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = sub nsw i32 %98, 2
  %100 = call i32 @memcpy(i32 %93, i32* %96, i32 %99)
  %101 = load %struct.wpa_sm*, %struct.wpa_sm** %7, align 8
  %102 = call i64 @ieee80211w_set_keys(%struct.wpa_sm* %101, %struct.wpa_eapol_ie_parse* %13)
  %103 = icmp slt i64 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %90
  br label %105

105:                                              ; preds = %104, %90
  store i32 0, i32* %6, align 4
  br label %106

106:                                              ; preds = %105, %89, %54, %34, %29
  %107 = load i32, i32* %6, align 4
  ret i32 %107
}

declare dso_local i32 @wpa_hexdump(i32, i8*, i32*, i64) #1

declare dso_local i32 @wpa_supplicant_parse_ies(i32*, i64, %struct.wpa_eapol_ie_parse*) #1

declare dso_local i64 @wpa_supplicant_check_group_cipher(i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @wpa_supplicant_gtk_tx_bit_workaround(%struct.wpa_sm*, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i64 @ieee80211w_set_keys(%struct.wpa_sm*, %struct.wpa_eapol_ie_parse*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

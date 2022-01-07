; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/rsn_supp/extr_wpa.c_wpa_supplicant_process_1_of_4.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/rsn_supp/extr_wpa.c_wpa_supplicant_process_1_of_4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_sm = type { i64, i32, i32, i32, i32, i32, i32*, i32, i64, %struct.wpa_ptk, i64 }
%struct.wpa_ptk = type { i32 }
%struct.wpa_eapol_key = type { i32, i32 }
%struct.wpa_eapol_ie_parse = type { i32* }

@WPA_FIRST_HALF_4WAY_HANDSHAKE = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"WPA 1/4-Way Handshake\0A\00", align 1
@WPA_PROTO_RSN = common dso_local global i64 0, align 8
@MSG_MSGDUMP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"RSN: msg 1/4 key data\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"RSN: PMKID from Authenticator\00", align 1
@PMKID_LEN = common dso_local global i64 0, align 8
@WPA2_AUTH_ENT = common dso_local global i64 0, align 8
@WPA_NONCE_LEN = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [20 x i8] c"WPA: Renewed SNonce\00", align 1
@WLAN_REASON_UNSPECIFIED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wpa_supplicant_process_1_of_4(%struct.wpa_sm* %0, i8* %1, %struct.wpa_eapol_key* %2, i32 %3) #0 {
  %5 = alloca %struct.wpa_sm*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.wpa_eapol_key*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.wpa_eapol_ie_parse, align 8
  %10 = alloca %struct.wpa_ptk*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  store %struct.wpa_sm* %0, %struct.wpa_sm** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.wpa_eapol_key* %2, %struct.wpa_eapol_key** %7, align 8
  store i32 %3, i32* %8, align 4
  %14 = load i32, i32* @WPA_FIRST_HALF_4WAY_HANDSHAKE, align 4
  %15 = call i32 @wpa_sm_set_state(i32 %14)
  %16 = load i32, i32* @MSG_DEBUG, align 4
  %17 = call i32 @wpa_printf(i32 %16, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %18 = call i32 @memset(%struct.wpa_eapol_ie_parse* %9, i32 0, i32 8)
  %19 = load %struct.wpa_sm*, %struct.wpa_sm** %5, align 8
  %20 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @WPA_PROTO_RSN, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %49

24:                                               ; preds = %4
  %25 = load %struct.wpa_eapol_key*, %struct.wpa_eapol_key** %7, align 8
  %26 = getelementptr inbounds %struct.wpa_eapol_key, %struct.wpa_eapol_key* %25, i64 1
  %27 = bitcast %struct.wpa_eapol_key* %26 to i32*
  store i32* %27, i32** %12, align 8
  %28 = load %struct.wpa_eapol_key*, %struct.wpa_eapol_key** %7, align 8
  %29 = getelementptr inbounds %struct.wpa_eapol_key, %struct.wpa_eapol_key* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @WPA_GET_BE16(i32 %30)
  store i64 %31, i64* %13, align 8
  %32 = load i32, i32* @MSG_MSGDUMP, align 4
  %33 = load i32*, i32** %12, align 8
  %34 = load i64, i64* %13, align 8
  %35 = call i32 @wpa_hexdump(i32 %32, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32* %33, i64 %34)
  %36 = load i32*, i32** %12, align 8
  %37 = load i64, i64* %13, align 8
  %38 = call i32 @wpa_supplicant_parse_ies(i32* %36, i64 %37, %struct.wpa_eapol_ie_parse* %9)
  %39 = getelementptr inbounds %struct.wpa_eapol_ie_parse, %struct.wpa_eapol_ie_parse* %9, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %42, label %48

42:                                               ; preds = %24
  %43 = load i32, i32* @MSG_DEBUG, align 4
  %44 = getelementptr inbounds %struct.wpa_eapol_ie_parse, %struct.wpa_eapol_ie_parse* %9, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = load i64, i64* @PMKID_LEN, align 8
  %47 = call i32 @wpa_hexdump(i32 %43, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32* %45, i64 %46)
  br label %48

48:                                               ; preds = %42, %24
  br label %49

49:                                               ; preds = %48, %4
  %50 = load %struct.wpa_sm*, %struct.wpa_sm** %5, align 8
  %51 = load i8*, i8** %6, align 8
  %52 = getelementptr inbounds %struct.wpa_eapol_ie_parse, %struct.wpa_eapol_ie_parse* %9, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = call i32 @wpa_supplicant_get_pmk(%struct.wpa_sm* %50, i8* %51, i32* %53)
  store i32 %54, i32* %11, align 4
  %55 = load i32, i32* %11, align 4
  %56 = icmp eq i32 %55, -2
  br i1 %56, label %57, label %58

57:                                               ; preds = %49
  br label %143

58:                                               ; preds = %49
  %59 = load i32, i32* %11, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %58
  br label %139

62:                                               ; preds = %58
  %63 = call i64 (...) @esp_wifi_sta_prof_is_wpa2_internal()
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %75

65:                                               ; preds = %62
  %66 = call i64 (...) @esp_wifi_sta_get_prof_authmode_internal()
  %67 = load i64, i64* @WPA2_AUTH_ENT, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %75

69:                                               ; preds = %65
  %70 = load %struct.wpa_sm*, %struct.wpa_sm** %5, align 8
  %71 = load %struct.wpa_sm*, %struct.wpa_sm** %5, align 8
  %72 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %71, i32 0, i32 7
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @pmksa_cache_set_current(%struct.wpa_sm* %70, i32* null, i32 %73, i32 0, i32 0)
  br label %75

75:                                               ; preds = %69, %65, %62
  %76 = load %struct.wpa_sm*, %struct.wpa_sm** %5, align 8
  %77 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %76, i32 0, i32 10
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %97

80:                                               ; preds = %75
  %81 = load %struct.wpa_sm*, %struct.wpa_sm** %5, align 8
  %82 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %81, i32 0, i32 6
  %83 = load i32*, i32** %82, align 8
  %84 = load i64, i64* @WPA_NONCE_LEN, align 8
  %85 = call i64 @os_get_random(i32* %83, i64 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %80
  br label %139

88:                                               ; preds = %80
  %89 = load %struct.wpa_sm*, %struct.wpa_sm** %5, align 8
  %90 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %89, i32 0, i32 10
  store i64 0, i64* %90, align 8
  %91 = load i32, i32* @MSG_DEBUG, align 4
  %92 = load %struct.wpa_sm*, %struct.wpa_sm** %5, align 8
  %93 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %92, i32 0, i32 6
  %94 = load i32*, i32** %93, align 8
  %95 = load i64, i64* @WPA_NONCE_LEN, align 8
  %96 = call i32 @wpa_hexdump(i32 %91, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32* %94, i64 %95)
  br label %97

97:                                               ; preds = %88, %75
  %98 = load %struct.wpa_sm*, %struct.wpa_sm** %5, align 8
  %99 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %98, i32 0, i32 9
  store %struct.wpa_ptk* %99, %struct.wpa_ptk** %10, align 8
  %100 = load %struct.wpa_sm*, %struct.wpa_sm** %5, align 8
  %101 = load i8*, i8** %6, align 8
  %102 = load %struct.wpa_eapol_key*, %struct.wpa_eapol_key** %7, align 8
  %103 = load %struct.wpa_ptk*, %struct.wpa_ptk** %10, align 8
  %104 = call i32 @wpa_derive_ptk(%struct.wpa_sm* %100, i8* %101, %struct.wpa_eapol_key* %102, %struct.wpa_ptk* %103)
  %105 = load %struct.wpa_sm*, %struct.wpa_sm** %5, align 8
  %106 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %105, i32 0, i32 1
  store i32 1, i32* %106, align 8
  %107 = load %struct.wpa_sm*, %struct.wpa_sm** %5, align 8
  %108 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %107, i32 0, i32 8
  store i64 0, i64* %108, align 8
  %109 = load %struct.wpa_sm*, %struct.wpa_sm** %5, align 8
  %110 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %109, i32 0, i32 2
  store i32 1, i32* %110, align 4
  %111 = load %struct.wpa_sm*, %struct.wpa_sm** %5, align 8
  %112 = load %struct.wpa_sm*, %struct.wpa_sm** %5, align 8
  %113 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %112, i32 0, i32 7
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.wpa_eapol_key*, %struct.wpa_eapol_key** %7, align 8
  %116 = load i32, i32* %8, align 4
  %117 = load %struct.wpa_sm*, %struct.wpa_sm** %5, align 8
  %118 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %117, i32 0, i32 6
  %119 = load i32*, i32** %118, align 8
  %120 = load %struct.wpa_sm*, %struct.wpa_sm** %5, align 8
  %121 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %120, i32 0, i32 5
  %122 = load i32, i32* %121, align 8
  %123 = load %struct.wpa_sm*, %struct.wpa_sm** %5, align 8
  %124 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %123, i32 0, i32 4
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.wpa_ptk*, %struct.wpa_ptk** %10, align 8
  %127 = call i64 @wpa_supplicant_send_2_of_4(%struct.wpa_sm* %111, i32 %114, %struct.wpa_eapol_key* %115, i32 %116, i32* %119, i32 %122, i32 %125, %struct.wpa_ptk* %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %97
  br label %139

130:                                              ; preds = %97
  %131 = load %struct.wpa_sm*, %struct.wpa_sm** %5, align 8
  %132 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %131, i32 0, i32 3
  %133 = load i32, i32* %132, align 8
  %134 = load %struct.wpa_eapol_key*, %struct.wpa_eapol_key** %7, align 8
  %135 = getelementptr inbounds %struct.wpa_eapol_key, %struct.wpa_eapol_key* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = load i64, i64* @WPA_NONCE_LEN, align 8
  %138 = call i32 @memcpy(i32 %133, i32 %136, i64 %137)
  br label %143

139:                                              ; preds = %129, %87, %61
  %140 = load %struct.wpa_sm*, %struct.wpa_sm** %5, align 8
  %141 = load i32, i32* @WLAN_REASON_UNSPECIFIED, align 4
  %142 = call i32 @wpa_sm_deauthenticate(%struct.wpa_sm* %140, i32 %141)
  br label %143

143:                                              ; preds = %139, %130, %57
  ret void
}

declare dso_local i32 @wpa_sm_set_state(i32) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32 @memset(%struct.wpa_eapol_ie_parse*, i32, i32) #1

declare dso_local i64 @WPA_GET_BE16(i32) #1

declare dso_local i32 @wpa_hexdump(i32, i8*, i32*, i64) #1

declare dso_local i32 @wpa_supplicant_parse_ies(i32*, i64, %struct.wpa_eapol_ie_parse*) #1

declare dso_local i32 @wpa_supplicant_get_pmk(%struct.wpa_sm*, i8*, i32*) #1

declare dso_local i64 @esp_wifi_sta_prof_is_wpa2_internal(...) #1

declare dso_local i64 @esp_wifi_sta_get_prof_authmode_internal(...) #1

declare dso_local i32 @pmksa_cache_set_current(%struct.wpa_sm*, i32*, i32, i32, i32) #1

declare dso_local i64 @os_get_random(i32*, i64) #1

declare dso_local i32 @wpa_derive_ptk(%struct.wpa_sm*, i8*, %struct.wpa_eapol_key*, %struct.wpa_ptk*) #1

declare dso_local i64 @wpa_supplicant_send_2_of_4(%struct.wpa_sm*, i32, %struct.wpa_eapol_key*, i32, i32*, i32, i32, %struct.wpa_ptk*) #1

declare dso_local i32 @memcpy(i32, i32, i64) #1

declare dso_local i32 @wpa_sm_deauthenticate(%struct.wpa_sm*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

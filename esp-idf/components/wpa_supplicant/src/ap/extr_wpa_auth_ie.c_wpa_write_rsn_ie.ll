; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/ap/extr_wpa_auth_ie.c_wpa_write_rsn_ie.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/ap/extr_wpa_auth_ie.c_wpa_write_rsn_ie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_auth_config = type { i32, i32, i32, i64, i64, i64, i64 }
%struct.rsn_ie_hdr = type { i32, i32*, i32 }

@WLAN_EID_RSN = common dso_local global i32 0, align 4
@RSN_VERSION = common dso_local global i32 0, align 4
@WPA_PROTO_RSN = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Invalid group cipher (%d).\00", align 1
@RSN_SELECTOR_LEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Invalid pairwise cipher (%d).\00", align 1
@WPA_KEY_MGMT_IEEE8021X = common dso_local global i32 0, align 4
@RSN_AUTH_KEY_MGMT_UNSPEC_802_1X = common dso_local global i64 0, align 8
@WPA_KEY_MGMT_PSK = common dso_local global i32 0, align 4
@RSN_AUTH_KEY_MGMT_PSK_OVER_802_1X = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [34 x i8] c"Invalid key management type (%d).\00", align 1
@WPA_CAPABILITY_PREAUTH = common dso_local global i32 0, align 4
@WPA_CAPABILITY_PEERKEY_ENABLED = common dso_local global i32 0, align 4
@RSN_NUM_REPLAY_COUNTERS_16 = common dso_local global i32 0, align 4
@PMKID_LEN = common dso_local global i32 0, align 4
@MGMT_FRAME_PROTECTION_REQUIRED = common dso_local global i64 0, align 8
@NO_MGMT_FRAME_PROTECTION = common dso_local global i64 0, align 8
@RSN_AUTH_KEY_MGMT_802_1X_SHA256 = common dso_local global i64 0, align 8
@RSN_AUTH_KEY_MGMT_FT_802_1X = common dso_local global i64 0, align 8
@RSN_AUTH_KEY_MGMT_FT_PSK = common dso_local global i64 0, align 8
@RSN_AUTH_KEY_MGMT_FT_SAE = common dso_local global i64 0, align 8
@RSN_AUTH_KEY_MGMT_PSK_SHA256 = common dso_local global i64 0, align 8
@RSN_AUTH_KEY_MGMT_SAE = common dso_local global i64 0, align 8
@RSN_CIPHER_SUITE_AES_128_CMAC = common dso_local global i64 0, align 8
@WPA_CAPABILITY_MFPC = common dso_local global i32 0, align 4
@WPA_CAPABILITY_MFPR = common dso_local global i32 0, align 4
@WPA_KEY_MGMT_FT_IEEE8021X = common dso_local global i32 0, align 4
@WPA_KEY_MGMT_FT_PSK = common dso_local global i32 0, align 4
@WPA_KEY_MGMT_FT_SAE = common dso_local global i32 0, align 4
@WPA_KEY_MGMT_IEEE8021X_SHA256 = common dso_local global i32 0, align 4
@WPA_KEY_MGMT_PSK_SHA256 = common dso_local global i32 0, align 4
@WPA_KEY_MGMT_SAE = common dso_local global i32 0, align 4
@rsn_testing = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wpa_write_rsn_ie(%struct.wpa_auth_config* %0, i32* %1, i64 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.wpa_auth_config*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.rsn_ie_hdr*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  store %struct.wpa_auth_config* %0, %struct.wpa_auth_config** %6, align 8
  store i32* %1, i32** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  %17 = load i32*, i32** %7, align 8
  %18 = bitcast i32* %17 to %struct.rsn_ie_hdr*
  store %struct.rsn_ie_hdr* %18, %struct.rsn_ie_hdr** %10, align 8
  %19 = load i32, i32* @WLAN_EID_RSN, align 4
  %20 = load %struct.rsn_ie_hdr*, %struct.rsn_ie_hdr** %10, align 8
  %21 = getelementptr inbounds %struct.rsn_ie_hdr, %struct.rsn_ie_hdr* %20, i32 0, i32 2
  store i32 %19, i32* %21, align 8
  %22 = load %struct.rsn_ie_hdr*, %struct.rsn_ie_hdr** %10, align 8
  %23 = getelementptr inbounds %struct.rsn_ie_hdr, %struct.rsn_ie_hdr* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  %25 = load i32, i32* @RSN_VERSION, align 4
  %26 = call i32 @WPA_PUT_LE16(i32* %24, i32 %25)
  %27 = load %struct.rsn_ie_hdr*, %struct.rsn_ie_hdr** %10, align 8
  %28 = getelementptr inbounds %struct.rsn_ie_hdr, %struct.rsn_ie_hdr* %27, i64 1
  %29 = bitcast %struct.rsn_ie_hdr* %28 to i32*
  store i32* %29, i32** %13, align 8
  %30 = load i32, i32* @WPA_PROTO_RSN, align 4
  %31 = load %struct.wpa_auth_config*, %struct.wpa_auth_config** %6, align 8
  %32 = getelementptr inbounds %struct.wpa_auth_config, %struct.wpa_auth_config* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i64 @wpa_cipher_to_suite(i32 %30, i32 %33)
  store i64 %34, i64* %16, align 8
  %35 = load i64, i64* %16, align 8
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %4
  %38 = load i32, i32* @MSG_DEBUG, align 4
  %39 = load %struct.wpa_auth_config*, %struct.wpa_auth_config** %6, align 8
  %40 = getelementptr inbounds %struct.wpa_auth_config, %struct.wpa_auth_config* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @wpa_printf(i32 %38, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %41)
  store i32 -1, i32* %5, align 4
  br label %206

43:                                               ; preds = %4
  %44 = load i32*, i32** %13, align 8
  %45 = load i64, i64* %16, align 8
  %46 = call i32 @RSN_SELECTOR_PUT(i32* %44, i64 %45)
  %47 = load i32, i32* @RSN_SELECTOR_LEN, align 4
  %48 = load i32*, i32** %13, align 8
  %49 = sext i32 %47 to i64
  %50 = getelementptr inbounds i32, i32* %48, i64 %49
  store i32* %50, i32** %13, align 8
  store i32 0, i32* %11, align 4
  %51 = load i32*, i32** %13, align 8
  store i32* %51, i32** %14, align 8
  %52 = load i32*, i32** %13, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 2
  store i32* %53, i32** %13, align 8
  %54 = load i32*, i32** %13, align 8
  %55 = load %struct.wpa_auth_config*, %struct.wpa_auth_config** %6, align 8
  %56 = getelementptr inbounds %struct.wpa_auth_config, %struct.wpa_auth_config* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @rsn_cipher_put_suites(i32* %54, i32 %57)
  store i32 %58, i32* %12, align 4
  %59 = load i32, i32* %12, align 4
  %60 = load i32, i32* %11, align 4
  %61 = add nsw i32 %60, %59
  store i32 %61, i32* %11, align 4
  %62 = load i32, i32* %12, align 4
  %63 = load i32, i32* @RSN_SELECTOR_LEN, align 4
  %64 = mul nsw i32 %62, %63
  %65 = load i32*, i32** %13, align 8
  %66 = sext i32 %64 to i64
  %67 = getelementptr inbounds i32, i32* %65, i64 %66
  store i32* %67, i32** %13, align 8
  %68 = load i32, i32* %11, align 4
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %43
  %71 = load i32, i32* @MSG_DEBUG, align 4
  %72 = load %struct.wpa_auth_config*, %struct.wpa_auth_config** %6, align 8
  %73 = getelementptr inbounds %struct.wpa_auth_config, %struct.wpa_auth_config* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @wpa_printf(i32 %71, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %74)
  store i32 -1, i32* %5, align 4
  br label %206

76:                                               ; preds = %43
  %77 = load i32*, i32** %14, align 8
  %78 = load i32, i32* %11, align 4
  %79 = call i32 @WPA_PUT_LE16(i32* %77, i32 %78)
  store i32 0, i32* %11, align 4
  %80 = load i32*, i32** %13, align 8
  store i32* %80, i32** %14, align 8
  %81 = load i32*, i32** %13, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 2
  store i32* %82, i32** %13, align 8
  %83 = load %struct.wpa_auth_config*, %struct.wpa_auth_config** %6, align 8
  %84 = getelementptr inbounds %struct.wpa_auth_config, %struct.wpa_auth_config* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* @WPA_KEY_MGMT_IEEE8021X, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %99

89:                                               ; preds = %76
  %90 = load i32*, i32** %13, align 8
  %91 = load i64, i64* @RSN_AUTH_KEY_MGMT_UNSPEC_802_1X, align 8
  %92 = call i32 @RSN_SELECTOR_PUT(i32* %90, i64 %91)
  %93 = load i32, i32* @RSN_SELECTOR_LEN, align 4
  %94 = load i32*, i32** %13, align 8
  %95 = sext i32 %93 to i64
  %96 = getelementptr inbounds i32, i32* %94, i64 %95
  store i32* %96, i32** %13, align 8
  %97 = load i32, i32* %11, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %11, align 4
  br label %99

99:                                               ; preds = %89, %76
  %100 = load %struct.wpa_auth_config*, %struct.wpa_auth_config** %6, align 8
  %101 = getelementptr inbounds %struct.wpa_auth_config, %struct.wpa_auth_config* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* @WPA_KEY_MGMT_PSK, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %116

106:                                              ; preds = %99
  %107 = load i32*, i32** %13, align 8
  %108 = load i64, i64* @RSN_AUTH_KEY_MGMT_PSK_OVER_802_1X, align 8
  %109 = call i32 @RSN_SELECTOR_PUT(i32* %107, i64 %108)
  %110 = load i32, i32* @RSN_SELECTOR_LEN, align 4
  %111 = load i32*, i32** %13, align 8
  %112 = sext i32 %110 to i64
  %113 = getelementptr inbounds i32, i32* %111, i64 %112
  store i32* %113, i32** %13, align 8
  %114 = load i32, i32* %11, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %11, align 4
  br label %116

116:                                              ; preds = %106, %99
  %117 = load i32, i32* %11, align 4
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %119, label %125

119:                                              ; preds = %116
  %120 = load i32, i32* @MSG_DEBUG, align 4
  %121 = load %struct.wpa_auth_config*, %struct.wpa_auth_config** %6, align 8
  %122 = getelementptr inbounds %struct.wpa_auth_config, %struct.wpa_auth_config* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 8
  %124 = call i32 @wpa_printf(i32 %120, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %123)
  store i32 -1, i32* %5, align 4
  br label %206

125:                                              ; preds = %116
  %126 = load i32*, i32** %14, align 8
  %127 = load i32, i32* %11, align 4
  %128 = call i32 @WPA_PUT_LE16(i32* %126, i32 %127)
  store i32 0, i32* %15, align 4
  %129 = load %struct.wpa_auth_config*, %struct.wpa_auth_config** %6, align 8
  %130 = getelementptr inbounds %struct.wpa_auth_config, %struct.wpa_auth_config* %129, i32 0, i32 6
  %131 = load i64, i64* %130, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %137

133:                                              ; preds = %125
  %134 = load i32, i32* @WPA_CAPABILITY_PREAUTH, align 4
  %135 = load i32, i32* %15, align 4
  %136 = or i32 %135, %134
  store i32 %136, i32* %15, align 4
  br label %137

137:                                              ; preds = %133, %125
  %138 = load %struct.wpa_auth_config*, %struct.wpa_auth_config** %6, align 8
  %139 = getelementptr inbounds %struct.wpa_auth_config, %struct.wpa_auth_config* %138, i32 0, i32 5
  %140 = load i64, i64* %139, align 8
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %146

142:                                              ; preds = %137
  %143 = load i32, i32* @WPA_CAPABILITY_PEERKEY_ENABLED, align 4
  %144 = load i32, i32* %15, align 4
  %145 = or i32 %144, %143
  store i32 %145, i32* %15, align 4
  br label %146

146:                                              ; preds = %142, %137
  %147 = load %struct.wpa_auth_config*, %struct.wpa_auth_config** %6, align 8
  %148 = getelementptr inbounds %struct.wpa_auth_config, %struct.wpa_auth_config* %147, i32 0, i32 4
  %149 = load i64, i64* %148, align 8
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %156

151:                                              ; preds = %146
  %152 = load i32, i32* @RSN_NUM_REPLAY_COUNTERS_16, align 4
  %153 = shl i32 %152, 2
  %154 = load i32, i32* %15, align 4
  %155 = or i32 %154, %153
  store i32 %155, i32* %15, align 4
  br label %156

156:                                              ; preds = %151, %146
  %157 = load i32*, i32** %13, align 8
  %158 = load i32, i32* %15, align 4
  %159 = call i32 @WPA_PUT_LE16(i32* %157, i32 %158)
  %160 = load i32*, i32** %13, align 8
  %161 = getelementptr inbounds i32, i32* %160, i64 2
  store i32* %161, i32** %13, align 8
  %162 = load i32*, i32** %9, align 8
  %163 = icmp ne i32* %162, null
  br i1 %163, label %164, label %188

164:                                              ; preds = %156
  %165 = load i32*, i32** %13, align 8
  %166 = getelementptr inbounds i32, i32* %165, i64 2
  %167 = load i32, i32* @PMKID_LEN, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i32, i32* %166, i64 %168
  %170 = load i32*, i32** %7, align 8
  %171 = load i64, i64* %8, align 8
  %172 = getelementptr inbounds i32, i32* %170, i64 %171
  %173 = icmp ugt i32* %169, %172
  br i1 %173, label %174, label %175

174:                                              ; preds = %164
  store i32 -1, i32* %5, align 4
  br label %206

175:                                              ; preds = %164
  %176 = load i32*, i32** %13, align 8
  %177 = call i32 @WPA_PUT_LE16(i32* %176, i32 1)
  %178 = load i32*, i32** %13, align 8
  %179 = getelementptr inbounds i32, i32* %178, i64 2
  store i32* %179, i32** %13, align 8
  %180 = load i32*, i32** %13, align 8
  %181 = load i32*, i32** %9, align 8
  %182 = load i32, i32* @PMKID_LEN, align 4
  %183 = call i32 @memcpy(i32* %180, i32* %181, i32 %182)
  %184 = load i32, i32* @PMKID_LEN, align 4
  %185 = load i32*, i32** %13, align 8
  %186 = sext i32 %184 to i64
  %187 = getelementptr inbounds i32, i32* %185, i64 %186
  store i32* %187, i32** %13, align 8
  br label %188

188:                                              ; preds = %175, %156
  %189 = load i32*, i32** %13, align 8
  %190 = load i32*, i32** %7, align 8
  %191 = ptrtoint i32* %189 to i64
  %192 = ptrtoint i32* %190 to i64
  %193 = sub i64 %191, %192
  %194 = sdiv exact i64 %193, 4
  %195 = sub nsw i64 %194, 2
  %196 = trunc i64 %195 to i32
  %197 = load %struct.rsn_ie_hdr*, %struct.rsn_ie_hdr** %10, align 8
  %198 = getelementptr inbounds %struct.rsn_ie_hdr, %struct.rsn_ie_hdr* %197, i32 0, i32 0
  store i32 %196, i32* %198, align 8
  %199 = load i32*, i32** %13, align 8
  %200 = load i32*, i32** %7, align 8
  %201 = ptrtoint i32* %199 to i64
  %202 = ptrtoint i32* %200 to i64
  %203 = sub i64 %201, %202
  %204 = sdiv exact i64 %203, 4
  %205 = trunc i64 %204 to i32
  store i32 %205, i32* %5, align 4
  br label %206

206:                                              ; preds = %188, %174, %119, %70, %37
  %207 = load i32, i32* %5, align 4
  ret i32 %207
}

declare dso_local i32 @WPA_PUT_LE16(i32*, i32) #1

declare dso_local i64 @wpa_cipher_to_suite(i32, i32) #1

declare dso_local i32 @wpa_printf(i32, i8*, i32) #1

declare dso_local i32 @RSN_SELECTOR_PUT(i32*, i64) #1

declare dso_local i32 @rsn_cipher_put_suites(i32*, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

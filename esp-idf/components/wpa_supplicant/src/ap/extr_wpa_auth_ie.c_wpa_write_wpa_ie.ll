; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/ap/extr_wpa_auth_ie.c_wpa_write_wpa_ie.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/ap/extr_wpa_auth_ie.c_wpa_write_wpa_ie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_auth_config = type { i32, i32, i32 }
%struct.wpa_ie_hdr = type { i32, i32*, i32*, i32 }

@WLAN_EID_VENDOR_SPECIFIC = common dso_local global i32 0, align 4
@WPA_OUI_TYPE = common dso_local global i64 0, align 8
@WPA_VERSION = common dso_local global i32 0, align 4
@WPA_PROTO_WPA = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Invalid group cipher (%d).\00", align 1
@WPA_SELECTOR_LEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Invalid pairwise cipher (%d).\00", align 1
@WPA_KEY_MGMT_IEEE8021X = common dso_local global i32 0, align 4
@WPA_AUTH_KEY_MGMT_UNSPEC_802_1X = common dso_local global i64 0, align 8
@WPA_KEY_MGMT_PSK = common dso_local global i32 0, align 4
@WPA_AUTH_KEY_MGMT_PSK_OVER_802_1X = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [34 x i8] c"Invalid key management type (%d).\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wpa_auth_config*, i32*, i64)* @wpa_write_wpa_ie to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wpa_write_wpa_ie(%struct.wpa_auth_config* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.wpa_auth_config*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.wpa_ie_hdr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  store %struct.wpa_auth_config* %0, %struct.wpa_auth_config** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  %13 = load i32*, i32** %6, align 8
  %14 = bitcast i32* %13 to %struct.wpa_ie_hdr*
  store %struct.wpa_ie_hdr* %14, %struct.wpa_ie_hdr** %8, align 8
  %15 = load i32, i32* @WLAN_EID_VENDOR_SPECIFIC, align 4
  %16 = load %struct.wpa_ie_hdr*, %struct.wpa_ie_hdr** %8, align 8
  %17 = getelementptr inbounds %struct.wpa_ie_hdr, %struct.wpa_ie_hdr* %16, i32 0, i32 3
  store i32 %15, i32* %17, align 8
  %18 = load %struct.wpa_ie_hdr*, %struct.wpa_ie_hdr** %8, align 8
  %19 = getelementptr inbounds %struct.wpa_ie_hdr, %struct.wpa_ie_hdr* %18, i32 0, i32 2
  %20 = load i32*, i32** %19, align 8
  %21 = load i64, i64* @WPA_OUI_TYPE, align 8
  %22 = call i32 @RSN_SELECTOR_PUT(i32* %20, i64 %21)
  %23 = load %struct.wpa_ie_hdr*, %struct.wpa_ie_hdr** %8, align 8
  %24 = getelementptr inbounds %struct.wpa_ie_hdr, %struct.wpa_ie_hdr* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* @WPA_VERSION, align 4
  %27 = call i32 @WPA_PUT_LE16(i32* %25, i32 %26)
  %28 = load %struct.wpa_ie_hdr*, %struct.wpa_ie_hdr** %8, align 8
  %29 = getelementptr inbounds %struct.wpa_ie_hdr, %struct.wpa_ie_hdr* %28, i64 1
  %30 = bitcast %struct.wpa_ie_hdr* %29 to i32*
  store i32* %30, i32** %10, align 8
  %31 = load i32, i32* @WPA_PROTO_WPA, align 4
  %32 = load %struct.wpa_auth_config*, %struct.wpa_auth_config** %5, align 8
  %33 = getelementptr inbounds %struct.wpa_auth_config, %struct.wpa_auth_config* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @wpa_cipher_to_suite(i32 %31, i32 %34)
  store i64 %35, i64* %12, align 8
  %36 = load i64, i64* %12, align 8
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %3
  %39 = load i32, i32* @MSG_DEBUG, align 4
  %40 = load %struct.wpa_auth_config*, %struct.wpa_auth_config** %5, align 8
  %41 = getelementptr inbounds %struct.wpa_auth_config, %struct.wpa_auth_config* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @wpa_printf(i32 %39, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %42)
  store i32 -1, i32* %4, align 4
  br label %144

44:                                               ; preds = %3
  %45 = load i32*, i32** %10, align 8
  %46 = load i64, i64* %12, align 8
  %47 = call i32 @RSN_SELECTOR_PUT(i32* %45, i64 %46)
  %48 = load i32, i32* @WPA_SELECTOR_LEN, align 4
  %49 = load i32*, i32** %10, align 8
  %50 = sext i32 %48 to i64
  %51 = getelementptr inbounds i32, i32* %49, i64 %50
  store i32* %51, i32** %10, align 8
  %52 = load i32*, i32** %10, align 8
  store i32* %52, i32** %11, align 8
  %53 = load i32*, i32** %10, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 2
  store i32* %54, i32** %10, align 8
  %55 = load i32*, i32** %10, align 8
  %56 = load %struct.wpa_auth_config*, %struct.wpa_auth_config** %5, align 8
  %57 = getelementptr inbounds %struct.wpa_auth_config, %struct.wpa_auth_config* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @wpa_cipher_put_suites(i32* %55, i32 %58)
  store i32 %59, i32* %9, align 4
  %60 = load i32, i32* %9, align 4
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %44
  %63 = load i32, i32* @MSG_DEBUG, align 4
  %64 = load %struct.wpa_auth_config*, %struct.wpa_auth_config** %5, align 8
  %65 = getelementptr inbounds %struct.wpa_auth_config, %struct.wpa_auth_config* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @wpa_printf(i32 %63, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %66)
  store i32 -1, i32* %4, align 4
  br label %144

68:                                               ; preds = %44
  %69 = load i32, i32* %9, align 4
  %70 = load i32, i32* @WPA_SELECTOR_LEN, align 4
  %71 = mul nsw i32 %69, %70
  %72 = load i32*, i32** %10, align 8
  %73 = sext i32 %71 to i64
  %74 = getelementptr inbounds i32, i32* %72, i64 %73
  store i32* %74, i32** %10, align 8
  %75 = load i32*, i32** %11, align 8
  %76 = load i32, i32* %9, align 4
  %77 = call i32 @WPA_PUT_LE16(i32* %75, i32 %76)
  store i32 0, i32* %9, align 4
  %78 = load i32*, i32** %10, align 8
  store i32* %78, i32** %11, align 8
  %79 = load i32*, i32** %10, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 2
  store i32* %80, i32** %10, align 8
  %81 = load %struct.wpa_auth_config*, %struct.wpa_auth_config** %5, align 8
  %82 = getelementptr inbounds %struct.wpa_auth_config, %struct.wpa_auth_config* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @WPA_KEY_MGMT_IEEE8021X, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %97

87:                                               ; preds = %68
  %88 = load i32*, i32** %10, align 8
  %89 = load i64, i64* @WPA_AUTH_KEY_MGMT_UNSPEC_802_1X, align 8
  %90 = call i32 @RSN_SELECTOR_PUT(i32* %88, i64 %89)
  %91 = load i32, i32* @WPA_SELECTOR_LEN, align 4
  %92 = load i32*, i32** %10, align 8
  %93 = sext i32 %91 to i64
  %94 = getelementptr inbounds i32, i32* %92, i64 %93
  store i32* %94, i32** %10, align 8
  %95 = load i32, i32* %9, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %9, align 4
  br label %97

97:                                               ; preds = %87, %68
  %98 = load %struct.wpa_auth_config*, %struct.wpa_auth_config** %5, align 8
  %99 = getelementptr inbounds %struct.wpa_auth_config, %struct.wpa_auth_config* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* @WPA_KEY_MGMT_PSK, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %114

104:                                              ; preds = %97
  %105 = load i32*, i32** %10, align 8
  %106 = load i64, i64* @WPA_AUTH_KEY_MGMT_PSK_OVER_802_1X, align 8
  %107 = call i32 @RSN_SELECTOR_PUT(i32* %105, i64 %106)
  %108 = load i32, i32* @WPA_SELECTOR_LEN, align 4
  %109 = load i32*, i32** %10, align 8
  %110 = sext i32 %108 to i64
  %111 = getelementptr inbounds i32, i32* %109, i64 %110
  store i32* %111, i32** %10, align 8
  %112 = load i32, i32* %9, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %9, align 4
  br label %114

114:                                              ; preds = %104, %97
  %115 = load i32, i32* %9, align 4
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %123

117:                                              ; preds = %114
  %118 = load i32, i32* @MSG_DEBUG, align 4
  %119 = load %struct.wpa_auth_config*, %struct.wpa_auth_config** %5, align 8
  %120 = getelementptr inbounds %struct.wpa_auth_config, %struct.wpa_auth_config* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @wpa_printf(i32 %118, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %121)
  store i32 -1, i32* %4, align 4
  br label %144

123:                                              ; preds = %114
  %124 = load i32*, i32** %11, align 8
  %125 = load i32, i32* %9, align 4
  %126 = call i32 @WPA_PUT_LE16(i32* %124, i32 %125)
  %127 = load i32*, i32** %10, align 8
  %128 = load i32*, i32** %6, align 8
  %129 = ptrtoint i32* %127 to i64
  %130 = ptrtoint i32* %128 to i64
  %131 = sub i64 %129, %130
  %132 = sdiv exact i64 %131, 4
  %133 = sub nsw i64 %132, 2
  %134 = trunc i64 %133 to i32
  %135 = load %struct.wpa_ie_hdr*, %struct.wpa_ie_hdr** %8, align 8
  %136 = getelementptr inbounds %struct.wpa_ie_hdr, %struct.wpa_ie_hdr* %135, i32 0, i32 0
  store i32 %134, i32* %136, align 8
  %137 = load i32*, i32** %10, align 8
  %138 = load i32*, i32** %6, align 8
  %139 = ptrtoint i32* %137 to i64
  %140 = ptrtoint i32* %138 to i64
  %141 = sub i64 %139, %140
  %142 = sdiv exact i64 %141, 4
  %143 = trunc i64 %142 to i32
  store i32 %143, i32* %4, align 4
  br label %144

144:                                              ; preds = %123, %117, %62, %38
  %145 = load i32, i32* %4, align 4
  ret i32 %145
}

declare dso_local i32 @RSN_SELECTOR_PUT(i32*, i64) #1

declare dso_local i32 @WPA_PUT_LE16(i32*, i32) #1

declare dso_local i64 @wpa_cipher_to_suite(i32, i32) #1

declare dso_local i32 @wpa_printf(i32, i8*, i32) #1

declare dso_local i32 @wpa_cipher_put_suites(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

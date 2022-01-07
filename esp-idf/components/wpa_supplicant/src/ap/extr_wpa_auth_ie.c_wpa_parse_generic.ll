; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/ap/extr_wpa_auth_ie.c_wpa_parse_generic.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/ap/extr_wpa_auth_ie.c_wpa_parse_generic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_eapol_ie_parse = type { i32*, i32, i32*, i32*, i32, i32*, i32, i32*, i32, i32*, i32, i32*, i32, i32*, i32, i32*, i32 }

@WPA_OUI_TYPE = common dso_local global i64 0, align 8
@WPA_SELECTOR_LEN = common dso_local global i32 0, align 4
@RSN_SELECTOR_LEN = common dso_local global i32 0, align 4
@PMKID_LEN = common dso_local global i32 0, align 4
@RSN_KEY_DATA_PMKID = common dso_local global i64 0, align 8
@RSN_KEY_DATA_GROUPKEY = common dso_local global i64 0, align 8
@RSN_KEY_DATA_MAC_ADDR = common dso_local global i64 0, align 8
@RSN_KEY_DATA_ERROR = common dso_local global i64 0, align 8
@RSN_KEY_DATA_IGTK = common dso_local global i64 0, align 8
@RSN_KEY_DATA_LIFETIME = common dso_local global i64 0, align 8
@RSN_KEY_DATA_NONCE = common dso_local global i64 0, align 8
@RSN_KEY_DATA_SMK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, %struct.wpa_eapol_ie_parse*)* @wpa_parse_generic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wpa_parse_generic(i32* %0, i32* %1, %struct.wpa_eapol_ie_parse* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.wpa_eapol_ie_parse*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.wpa_eapol_ie_parse* %2, %struct.wpa_eapol_ie_parse** %7, align 8
  %8 = load i32*, i32** %5, align 8
  %9 = getelementptr inbounds i32, i32* %8, i64 1
  %10 = load i32, i32* %9, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %138

13:                                               ; preds = %3
  %14 = load i32*, i32** %5, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 1
  %16 = load i32, i32* %15, align 4
  %17 = icmp sge i32 %16, 6
  br i1 %17, label %18, label %51

18:                                               ; preds = %13
  %19 = load i32*, i32** %5, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 2
  %21 = call i64 @RSN_SELECTOR_GET(i32* %20)
  %22 = load i64, i64* @WPA_OUI_TYPE, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %51

24:                                               ; preds = %18
  %25 = load i32*, i32** %5, align 8
  %26 = load i32, i32* @WPA_SELECTOR_LEN, align 4
  %27 = add nsw i32 2, %26
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %25, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = icmp eq i32 %30, 1
  br i1 %31, label %32, label %51

32:                                               ; preds = %24
  %33 = load i32*, i32** %5, align 8
  %34 = load i32, i32* @WPA_SELECTOR_LEN, align 4
  %35 = add nsw i32 2, %34
  %36 = add nsw i32 %35, 1
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %33, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %51

41:                                               ; preds = %32
  %42 = load i32*, i32** %5, align 8
  %43 = load %struct.wpa_eapol_ie_parse*, %struct.wpa_eapol_ie_parse** %7, align 8
  %44 = getelementptr inbounds %struct.wpa_eapol_ie_parse, %struct.wpa_eapol_ie_parse* %43, i32 0, i32 0
  store i32* %42, i32** %44, align 8
  %45 = load i32*, i32** %5, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 1
  %47 = load i32, i32* %46, align 4
  %48 = add nsw i32 %47, 2
  %49 = load %struct.wpa_eapol_ie_parse*, %struct.wpa_eapol_ie_parse** %7, align 8
  %50 = getelementptr inbounds %struct.wpa_eapol_ie_parse, %struct.wpa_eapol_ie_parse* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 8
  store i32 0, i32* %4, align 4
  br label %138

51:                                               ; preds = %32, %24, %18, %13
  %52 = load i32*, i32** %5, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 1
  %54 = load i32, i32* @RSN_SELECTOR_LEN, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = load i32*, i32** %6, align 8
  %58 = icmp ult i32* %56, %57
  br i1 %58, label %59, label %81

59:                                               ; preds = %51
  %60 = load i32*, i32** %5, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 1
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @RSN_SELECTOR_LEN, align 4
  %64 = load i32, i32* @PMKID_LEN, align 4
  %65 = add nsw i32 %63, %64
  %66 = icmp sge i32 %62, %65
  br i1 %66, label %67, label %81

67:                                               ; preds = %59
  %68 = load i32*, i32** %5, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 2
  %70 = call i64 @RSN_SELECTOR_GET(i32* %69)
  %71 = load i64, i64* @RSN_KEY_DATA_PMKID, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %81

73:                                               ; preds = %67
  %74 = load i32*, i32** %5, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 2
  %76 = load i32, i32* @RSN_SELECTOR_LEN, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  %79 = load %struct.wpa_eapol_ie_parse*, %struct.wpa_eapol_ie_parse** %7, align 8
  %80 = getelementptr inbounds %struct.wpa_eapol_ie_parse, %struct.wpa_eapol_ie_parse* %79, i32 0, i32 2
  store i32* %78, i32** %80, align 8
  store i32 0, i32* %4, align 4
  br label %138

81:                                               ; preds = %67, %59, %51
  %82 = load i32*, i32** %5, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 1
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @RSN_SELECTOR_LEN, align 4
  %86 = add nsw i32 %85, 2
  %87 = icmp sgt i32 %84, %86
  br i1 %87, label %88, label %109

88:                                               ; preds = %81
  %89 = load i32*, i32** %5, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 2
  %91 = call i64 @RSN_SELECTOR_GET(i32* %90)
  %92 = load i64, i64* @RSN_KEY_DATA_GROUPKEY, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %109

94:                                               ; preds = %88
  %95 = load i32*, i32** %5, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 2
  %97 = load i32, i32* @RSN_SELECTOR_LEN, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %96, i64 %98
  %100 = load %struct.wpa_eapol_ie_parse*, %struct.wpa_eapol_ie_parse** %7, align 8
  %101 = getelementptr inbounds %struct.wpa_eapol_ie_parse, %struct.wpa_eapol_ie_parse* %100, i32 0, i32 3
  store i32* %99, i32** %101, align 8
  %102 = load i32*, i32** %5, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 1
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @RSN_SELECTOR_LEN, align 4
  %106 = sub nsw i32 %104, %105
  %107 = load %struct.wpa_eapol_ie_parse*, %struct.wpa_eapol_ie_parse** %7, align 8
  %108 = getelementptr inbounds %struct.wpa_eapol_ie_parse, %struct.wpa_eapol_ie_parse* %107, i32 0, i32 4
  store i32 %106, i32* %108, align 8
  store i32 0, i32* %4, align 4
  br label %138

109:                                              ; preds = %88, %81
  %110 = load i32*, i32** %5, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 1
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* @RSN_SELECTOR_LEN, align 4
  %114 = add nsw i32 %113, 2
  %115 = icmp sgt i32 %112, %114
  br i1 %115, label %116, label %137

116:                                              ; preds = %109
  %117 = load i32*, i32** %5, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 2
  %119 = call i64 @RSN_SELECTOR_GET(i32* %118)
  %120 = load i64, i64* @RSN_KEY_DATA_MAC_ADDR, align 8
  %121 = icmp eq i64 %119, %120
  br i1 %121, label %122, label %137

122:                                              ; preds = %116
  %123 = load i32*, i32** %5, align 8
  %124 = getelementptr inbounds i32, i32* %123, i64 2
  %125 = load i32, i32* @RSN_SELECTOR_LEN, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %124, i64 %126
  %128 = load %struct.wpa_eapol_ie_parse*, %struct.wpa_eapol_ie_parse** %7, align 8
  %129 = getelementptr inbounds %struct.wpa_eapol_ie_parse, %struct.wpa_eapol_ie_parse* %128, i32 0, i32 5
  store i32* %127, i32** %129, align 8
  %130 = load i32*, i32** %5, align 8
  %131 = getelementptr inbounds i32, i32* %130, i64 1
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* @RSN_SELECTOR_LEN, align 4
  %134 = sub nsw i32 %132, %133
  %135 = load %struct.wpa_eapol_ie_parse*, %struct.wpa_eapol_ie_parse** %7, align 8
  %136 = getelementptr inbounds %struct.wpa_eapol_ie_parse, %struct.wpa_eapol_ie_parse* %135, i32 0, i32 6
  store i32 %134, i32* %136, align 8
  store i32 0, i32* %4, align 4
  br label %138

137:                                              ; preds = %116, %109
  store i32 0, i32* %4, align 4
  br label %138

138:                                              ; preds = %137, %122, %94, %73, %41, %12
  %139 = load i32, i32* %4, align 4
  ret i32 %139
}

declare dso_local i64 @RSN_SELECTOR_GET(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

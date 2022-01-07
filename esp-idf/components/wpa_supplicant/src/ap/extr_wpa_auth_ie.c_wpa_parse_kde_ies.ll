; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/ap/extr_wpa_auth_ie.c_wpa_parse_kde_ies.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/ap/extr_wpa_auth_ie.c_wpa_parse_kde_ies.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_eapol_ie_parse = type { i32*, i32, i32*, i32, i32*, i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"WPA: EAPOL-Key Key Data underflow (ie=%d len=%d pos=%d)\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"WPA: Key Data\00", align 1
@WLAN_EID_RSN = common dso_local global i32 0, align 4
@WLAN_EID_VENDOR_SPECIFIC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"WPA: Unrecognized EAPOL-Key Key Data IE\00", align 1
@WLAN_EID_FAST_BSS_TRANSITION = common dso_local global i32 0, align 4
@WLAN_EID_MOBILITY_DOMAIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wpa_parse_kde_ies(i32* %0, i64 %1, %struct.wpa_eapol_ie_parse* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.wpa_eapol_ie_parse*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.wpa_eapol_ie_parse* %2, %struct.wpa_eapol_ie_parse** %6, align 8
  store i32 0, i32* %9, align 4
  %10 = load %struct.wpa_eapol_ie_parse*, %struct.wpa_eapol_ie_parse** %6, align 8
  %11 = call i32 @memset(%struct.wpa_eapol_ie_parse* %10, i32 0, i32 48)
  %12 = load i32*, i32** %4, align 8
  store i32* %12, i32** %7, align 8
  %13 = load i32*, i32** %7, align 8
  %14 = load i64, i64* %5, align 8
  %15 = getelementptr inbounds i32, i32* %13, i64 %14
  store i32* %15, i32** %8, align 8
  br label %16

16:                                               ; preds = %112, %3
  %17 = load i32*, i32** %7, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 1
  %19 = load i32*, i32** %8, align 8
  %20 = icmp ult i32* %18, %19
  br i1 %20, label %21, label %120

21:                                               ; preds = %16
  %22 = load i32*, i32** %7, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp eq i32 %24, 221
  br i1 %25, label %26, label %39

26:                                               ; preds = %21
  %27 = load i32*, i32** %7, align 8
  %28 = load i32*, i32** %4, align 8
  %29 = load i64, i64* %5, align 8
  %30 = getelementptr inbounds i32, i32* %28, i64 %29
  %31 = getelementptr inbounds i32, i32* %30, i64 -1
  %32 = icmp eq i32* %27, %31
  br i1 %32, label %38, label %33

33:                                               ; preds = %26
  %34 = load i32*, i32** %7, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 1
  %36 = load i32, i32* %35, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %33, %26
  br label %120

39:                                               ; preds = %33, %21
  %40 = load i32*, i32** %7, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 2
  %42 = load i32*, i32** %7, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 1
  %44 = load i32, i32* %43, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %41, i64 %45
  %47 = load i32*, i32** %8, align 8
  %48 = icmp ugt i32* %46, %47
  br i1 %48, label %49, label %69

49:                                               ; preds = %39
  %50 = load i32, i32* @MSG_DEBUG, align 4
  %51 = load i32*, i32** %7, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32*, i32** %7, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 1
  %56 = load i32, i32* %55, align 4
  %57 = load i32*, i32** %7, align 8
  %58 = load i32*, i32** %4, align 8
  %59 = ptrtoint i32* %57 to i64
  %60 = ptrtoint i32* %58 to i64
  %61 = sub i64 %59, %60
  %62 = sdiv exact i64 %61, 4
  %63 = trunc i64 %62 to i32
  %64 = call i32 @wpa_printf(i32 %50, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i32 %53, i32 %56, i32 %63)
  %65 = load i32, i32* @MSG_DEBUG, align 4
  %66 = load i32*, i32** %4, align 8
  %67 = load i64, i64* %5, align 8
  %68 = call i32 @wpa_hexdump_key(i32 %65, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32* %66, i64 %67)
  store i32 -1, i32* %9, align 4
  br label %120

69:                                               ; preds = %39
  %70 = load i32*, i32** %7, align 8
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @WLAN_EID_RSN, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %84

74:                                               ; preds = %69
  %75 = load i32*, i32** %7, align 8
  %76 = load %struct.wpa_eapol_ie_parse*, %struct.wpa_eapol_ie_parse** %6, align 8
  %77 = getelementptr inbounds %struct.wpa_eapol_ie_parse, %struct.wpa_eapol_ie_parse* %76, i32 0, i32 0
  store i32* %75, i32** %77, align 8
  %78 = load i32*, i32** %7, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 1
  %80 = load i32, i32* %79, align 4
  %81 = add nsw i32 %80, 2
  %82 = load %struct.wpa_eapol_ie_parse*, %struct.wpa_eapol_ie_parse** %6, align 8
  %83 = getelementptr inbounds %struct.wpa_eapol_ie_parse, %struct.wpa_eapol_ie_parse* %82, i32 0, i32 1
  store i32 %81, i32* %83, align 8
  br label %111

84:                                               ; preds = %69
  %85 = load i32*, i32** %7, align 8
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @WLAN_EID_VENDOR_SPECIFIC, align 4
  %88 = icmp eq i32 %86, %87
  br i1 %88, label %89, label %102

89:                                               ; preds = %84
  %90 = load i32*, i32** %7, align 8
  %91 = load i32*, i32** %8, align 8
  %92 = load %struct.wpa_eapol_ie_parse*, %struct.wpa_eapol_ie_parse** %6, align 8
  %93 = call i32 @wpa_parse_generic(i32* %90, i32* %91, %struct.wpa_eapol_ie_parse* %92)
  store i32 %93, i32* %9, align 4
  %94 = load i32, i32* %9, align 4
  %95 = icmp slt i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %89
  br label %120

97:                                               ; preds = %89
  %98 = load i32, i32* %9, align 4
  %99 = icmp sgt i32 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %97
  store i32 0, i32* %9, align 4
  br label %120

101:                                              ; preds = %97
  br label %110

102:                                              ; preds = %84
  %103 = load i32, i32* @MSG_DEBUG, align 4
  %104 = load i32*, i32** %7, align 8
  %105 = load i32*, i32** %7, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 1
  %107 = load i32, i32* %106, align 4
  %108 = add nsw i32 2, %107
  %109 = call i32 @wpa_hexdump(i32 %103, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i32* %104, i32 %108)
  br label %110

110:                                              ; preds = %102, %101
  br label %111

111:                                              ; preds = %110, %74
  br label %112

112:                                              ; preds = %111
  %113 = load i32*, i32** %7, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 1
  %115 = load i32, i32* %114, align 4
  %116 = add nsw i32 2, %115
  %117 = load i32*, i32** %7, align 8
  %118 = sext i32 %116 to i64
  %119 = getelementptr inbounds i32, i32* %117, i64 %118
  store i32* %119, i32** %7, align 8
  br label %16

120:                                              ; preds = %100, %96, %49, %38, %16
  %121 = load i32, i32* %9, align 4
  ret i32 %121
}

declare dso_local i32 @memset(%struct.wpa_eapol_ie_parse*, i32, i32) #1

declare dso_local i32 @wpa_printf(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @wpa_hexdump_key(i32, i8*, i32*, i64) #1

declare dso_local i32 @wpa_parse_generic(i32*, i32*, %struct.wpa_eapol_ie_parse*) #1

declare dso_local i32 @wpa_hexdump(i32, i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

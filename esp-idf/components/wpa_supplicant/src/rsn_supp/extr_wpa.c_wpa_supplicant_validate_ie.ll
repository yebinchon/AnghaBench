; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/rsn_supp/extr_wpa.c_wpa_supplicant_validate_ie.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/rsn_supp/extr_wpa.c_wpa_supplicant_validate_ie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_sm = type { i64, i64, i32*, i32, i32, i32*, i32 }
%struct.wpa_eapol_ie_parse = type { i32, i32*, i32, i32* }

@WPA_PROTO_WPA = common dso_local global i64 0, align 8
@MSG_DEBUG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wpa_supplicant_validate_ie(%struct.wpa_sm* %0, i8* %1, %struct.wpa_eapol_ie_parse* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.wpa_sm*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.wpa_eapol_ie_parse*, align 8
  store %struct.wpa_sm* %0, %struct.wpa_sm** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.wpa_eapol_ie_parse* %2, %struct.wpa_eapol_ie_parse** %7, align 8
  %8 = load %struct.wpa_sm*, %struct.wpa_sm** %5, align 8
  %9 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %8, i32 0, i32 5
  %10 = load i32*, i32** %9, align 8
  %11 = icmp eq i32* %10, null
  br i1 %11, label %12, label %24

12:                                               ; preds = %3
  %13 = load %struct.wpa_sm*, %struct.wpa_sm** %5, align 8
  %14 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %13, i32 0, i32 2
  %15 = load i32*, i32** %14, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %24

17:                                               ; preds = %12
  %18 = load %struct.wpa_sm*, %struct.wpa_sm** %5, align 8
  %19 = call i64 @wpa_sm_get_beacon_ie(%struct.wpa_sm* %18)
  %20 = icmp slt i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  br label %23

22:                                               ; preds = %17
  br label %23

23:                                               ; preds = %22, %21
  br label %24

24:                                               ; preds = %23, %12, %3
  %25 = load %struct.wpa_eapol_ie_parse*, %struct.wpa_eapol_ie_parse** %7, align 8
  %26 = getelementptr inbounds %struct.wpa_eapol_ie_parse, %struct.wpa_eapol_ie_parse* %25, i32 0, i32 3
  %27 = load i32*, i32** %26, align 8
  %28 = icmp eq i32* %27, null
  br i1 %28, label %29, label %60

29:                                               ; preds = %24
  %30 = load %struct.wpa_eapol_ie_parse*, %struct.wpa_eapol_ie_parse** %7, align 8
  %31 = getelementptr inbounds %struct.wpa_eapol_ie_parse, %struct.wpa_eapol_ie_parse* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = icmp eq i32* %32, null
  br i1 %33, label %34, label %60

34:                                               ; preds = %29
  %35 = load %struct.wpa_sm*, %struct.wpa_sm** %5, align 8
  %36 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %35, i32 0, i32 5
  %37 = load i32*, i32** %36, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %44, label %39

39:                                               ; preds = %34
  %40 = load %struct.wpa_sm*, %struct.wpa_sm** %5, align 8
  %41 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %40, i32 0, i32 2
  %42 = load i32*, i32** %41, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %44, label %60

44:                                               ; preds = %39, %34
  %45 = load %struct.wpa_sm*, %struct.wpa_sm** %5, align 8
  %46 = load i8*, i8** %6, align 8
  %47 = load %struct.wpa_eapol_ie_parse*, %struct.wpa_eapol_ie_parse** %7, align 8
  %48 = getelementptr inbounds %struct.wpa_eapol_ie_parse, %struct.wpa_eapol_ie_parse* %47, i32 0, i32 3
  %49 = load i32*, i32** %48, align 8
  %50 = load %struct.wpa_eapol_ie_parse*, %struct.wpa_eapol_ie_parse** %7, align 8
  %51 = getelementptr inbounds %struct.wpa_eapol_ie_parse, %struct.wpa_eapol_ie_parse* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.wpa_eapol_ie_parse*, %struct.wpa_eapol_ie_parse** %7, align 8
  %54 = getelementptr inbounds %struct.wpa_eapol_ie_parse, %struct.wpa_eapol_ie_parse* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = load %struct.wpa_eapol_ie_parse*, %struct.wpa_eapol_ie_parse** %7, align 8
  %57 = getelementptr inbounds %struct.wpa_eapol_ie_parse, %struct.wpa_eapol_ie_parse* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i32 (%struct.wpa_sm*, ...) @wpa_report_ie_mismatch(%struct.wpa_sm* %45, i8* %46, i32* %49, i32 %52, i32* %55, i32 %58)
  store i32 -1, i32* %4, align 4
  br label %173

60:                                               ; preds = %39, %29, %24
  %61 = load %struct.wpa_eapol_ie_parse*, %struct.wpa_eapol_ie_parse** %7, align 8
  %62 = getelementptr inbounds %struct.wpa_eapol_ie_parse, %struct.wpa_eapol_ie_parse* %61, i32 0, i32 3
  %63 = load i32*, i32** %62, align 8
  %64 = icmp ne i32* %63, null
  br i1 %64, label %65, label %90

65:                                               ; preds = %60
  %66 = load %struct.wpa_sm*, %struct.wpa_sm** %5, align 8
  %67 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %66, i32 0, i32 5
  %68 = load i32*, i32** %67, align 8
  %69 = icmp ne i32* %68, null
  br i1 %69, label %70, label %90

70:                                               ; preds = %65
  %71 = load %struct.wpa_eapol_ie_parse*, %struct.wpa_eapol_ie_parse** %7, align 8
  %72 = getelementptr inbounds %struct.wpa_eapol_ie_parse, %struct.wpa_eapol_ie_parse* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.wpa_sm*, %struct.wpa_sm** %5, align 8
  %75 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %74, i32 0, i32 6
  %76 = load i32, i32* %75, align 8
  %77 = icmp ne i32 %73, %76
  br i1 %77, label %119, label %78

78:                                               ; preds = %70
  %79 = load %struct.wpa_eapol_ie_parse*, %struct.wpa_eapol_ie_parse** %7, align 8
  %80 = getelementptr inbounds %struct.wpa_eapol_ie_parse, %struct.wpa_eapol_ie_parse* %79, i32 0, i32 3
  %81 = load i32*, i32** %80, align 8
  %82 = load %struct.wpa_sm*, %struct.wpa_sm** %5, align 8
  %83 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %82, i32 0, i32 5
  %84 = load i32*, i32** %83, align 8
  %85 = load %struct.wpa_eapol_ie_parse*, %struct.wpa_eapol_ie_parse** %7, align 8
  %86 = getelementptr inbounds %struct.wpa_eapol_ie_parse, %struct.wpa_eapol_ie_parse* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = call i64 @memcmp(i32* %81, i32* %84, i32 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %119, label %90

90:                                               ; preds = %78, %65, %60
  %91 = load %struct.wpa_eapol_ie_parse*, %struct.wpa_eapol_ie_parse** %7, align 8
  %92 = getelementptr inbounds %struct.wpa_eapol_ie_parse, %struct.wpa_eapol_ie_parse* %91, i32 0, i32 1
  %93 = load i32*, i32** %92, align 8
  %94 = icmp ne i32* %93, null
  br i1 %94, label %95, label %135

95:                                               ; preds = %90
  %96 = load %struct.wpa_sm*, %struct.wpa_sm** %5, align 8
  %97 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %96, i32 0, i32 2
  %98 = load i32*, i32** %97, align 8
  %99 = icmp ne i32* %98, null
  br i1 %99, label %100, label %135

100:                                              ; preds = %95
  %101 = load %struct.wpa_sm*, %struct.wpa_sm** %5, align 8
  %102 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %101, i32 0, i32 4
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @wpa_key_mgmt_ft(i32 %103)
  %105 = load %struct.wpa_sm*, %struct.wpa_sm** %5, align 8
  %106 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %105, i32 0, i32 2
  %107 = load i32*, i32** %106, align 8
  %108 = load %struct.wpa_sm*, %struct.wpa_sm** %5, align 8
  %109 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.wpa_eapol_ie_parse*, %struct.wpa_eapol_ie_parse** %7, align 8
  %112 = getelementptr inbounds %struct.wpa_eapol_ie_parse, %struct.wpa_eapol_ie_parse* %111, i32 0, i32 1
  %113 = load i32*, i32** %112, align 8
  %114 = load %struct.wpa_eapol_ie_parse*, %struct.wpa_eapol_ie_parse** %7, align 8
  %115 = getelementptr inbounds %struct.wpa_eapol_ie_parse, %struct.wpa_eapol_ie_parse* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = call i64 @wpa_compare_rsn_ie(i32 %104, i32* %107, i32 %110, i32* %113, i32 %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %135

119:                                              ; preds = %100, %78, %70
  %120 = load %struct.wpa_sm*, %struct.wpa_sm** %5, align 8
  %121 = load i8*, i8** %6, align 8
  %122 = load %struct.wpa_eapol_ie_parse*, %struct.wpa_eapol_ie_parse** %7, align 8
  %123 = getelementptr inbounds %struct.wpa_eapol_ie_parse, %struct.wpa_eapol_ie_parse* %122, i32 0, i32 3
  %124 = load i32*, i32** %123, align 8
  %125 = load %struct.wpa_eapol_ie_parse*, %struct.wpa_eapol_ie_parse** %7, align 8
  %126 = getelementptr inbounds %struct.wpa_eapol_ie_parse, %struct.wpa_eapol_ie_parse* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 8
  %128 = load %struct.wpa_eapol_ie_parse*, %struct.wpa_eapol_ie_parse** %7, align 8
  %129 = getelementptr inbounds %struct.wpa_eapol_ie_parse, %struct.wpa_eapol_ie_parse* %128, i32 0, i32 1
  %130 = load i32*, i32** %129, align 8
  %131 = load %struct.wpa_eapol_ie_parse*, %struct.wpa_eapol_ie_parse** %7, align 8
  %132 = getelementptr inbounds %struct.wpa_eapol_ie_parse, %struct.wpa_eapol_ie_parse* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = call i32 (%struct.wpa_sm*, ...) @wpa_report_ie_mismatch(%struct.wpa_sm* %120, i8* %121, i32* %124, i32 %127, i32* %130, i32 %133)
  store i32 -1, i32* %4, align 4
  br label %173

135:                                              ; preds = %100, %95, %90
  %136 = load %struct.wpa_sm*, %struct.wpa_sm** %5, align 8
  %137 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = load i64, i64* @WPA_PROTO_WPA, align 8
  %140 = icmp eq i64 %138, %139
  br i1 %140, label %141, label %172

141:                                              ; preds = %135
  %142 = load %struct.wpa_eapol_ie_parse*, %struct.wpa_eapol_ie_parse** %7, align 8
  %143 = getelementptr inbounds %struct.wpa_eapol_ie_parse, %struct.wpa_eapol_ie_parse* %142, i32 0, i32 1
  %144 = load i32*, i32** %143, align 8
  %145 = icmp ne i32* %144, null
  br i1 %145, label %146, label %172

146:                                              ; preds = %141
  %147 = load %struct.wpa_sm*, %struct.wpa_sm** %5, align 8
  %148 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %147, i32 0, i32 2
  %149 = load i32*, i32** %148, align 8
  %150 = icmp eq i32* %149, null
  br i1 %150, label %151, label %172

151:                                              ; preds = %146
  %152 = load %struct.wpa_sm*, %struct.wpa_sm** %5, align 8
  %153 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %152, i32 0, i32 1
  %154 = load i64, i64* %153, align 8
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %172

156:                                              ; preds = %151
  %157 = load %struct.wpa_sm*, %struct.wpa_sm** %5, align 8
  %158 = load i8*, i8** %6, align 8
  %159 = load %struct.wpa_eapol_ie_parse*, %struct.wpa_eapol_ie_parse** %7, align 8
  %160 = getelementptr inbounds %struct.wpa_eapol_ie_parse, %struct.wpa_eapol_ie_parse* %159, i32 0, i32 3
  %161 = load i32*, i32** %160, align 8
  %162 = load %struct.wpa_eapol_ie_parse*, %struct.wpa_eapol_ie_parse** %7, align 8
  %163 = getelementptr inbounds %struct.wpa_eapol_ie_parse, %struct.wpa_eapol_ie_parse* %162, i32 0, i32 2
  %164 = load i32, i32* %163, align 8
  %165 = load %struct.wpa_eapol_ie_parse*, %struct.wpa_eapol_ie_parse** %7, align 8
  %166 = getelementptr inbounds %struct.wpa_eapol_ie_parse, %struct.wpa_eapol_ie_parse* %165, i32 0, i32 1
  %167 = load i32*, i32** %166, align 8
  %168 = load %struct.wpa_eapol_ie_parse*, %struct.wpa_eapol_ie_parse** %7, align 8
  %169 = getelementptr inbounds %struct.wpa_eapol_ie_parse, %struct.wpa_eapol_ie_parse* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = call i32 (%struct.wpa_sm*, ...) @wpa_report_ie_mismatch(%struct.wpa_sm* %157, i8* %158, i32* %161, i32 %164, i32* %167, i32 %170)
  store i32 -1, i32* %4, align 4
  br label %173

172:                                              ; preds = %151, %146, %141, %135
  store i32 0, i32* %4, align 4
  br label %173

173:                                              ; preds = %172, %156, %119, %44
  %174 = load i32, i32* %4, align 4
  ret i32 %174
}

declare dso_local i64 @wpa_sm_get_beacon_ie(%struct.wpa_sm*) #1

declare dso_local i32 @wpa_report_ie_mismatch(%struct.wpa_sm*, ...) #1

declare dso_local i64 @memcmp(i32*, i32*, i32) #1

declare dso_local i64 @wpa_compare_rsn_ie(i32, i32*, i32, i32*, i32) #1

declare dso_local i32 @wpa_key_mgmt_ft(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

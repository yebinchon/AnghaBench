; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/eap_peer/extr_eap_common.c_eap_hdr_validate.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/eap_peer/extr_eap_common.c_eap_hdr_validate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }
%struct.eap_hdr = type { i32 }

@EAP_TYPE_EXPANDED = common dso_local global i64 0, align 8
@MSG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"EAP: Invalid expanded EAP length\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"EAP: Invalid expanded frame type\00", align 1
@EAP_VENDOR_IETF = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"EAP: Invalid frame type\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64* @eap_hdr_validate(i32 %0, i64 %1, %struct.wpabuf* %2, i64* %3) #0 {
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.wpabuf*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca %struct.eap_hdr*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store i32 %0, i32* %6, align 4
  store i64 %1, i64* %7, align 8
  store %struct.wpabuf* %2, %struct.wpabuf** %8, align 8
  store i64* %3, i64** %9, align 8
  %15 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %16 = call i32 @eap_hdr_len_valid(%struct.wpabuf* %15, i32 1)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %4
  store i64* null, i64** %5, align 8
  br label %85

19:                                               ; preds = %4
  %20 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %21 = call %struct.eap_hdr* @wpabuf_head(%struct.wpabuf* %20)
  store %struct.eap_hdr* %21, %struct.eap_hdr** %10, align 8
  %22 = load %struct.eap_hdr*, %struct.eap_hdr** %10, align 8
  %23 = getelementptr inbounds %struct.eap_hdr, %struct.eap_hdr* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @be_to_host16(i32 %24)
  store i64 %25, i64* %12, align 8
  %26 = load %struct.eap_hdr*, %struct.eap_hdr** %10, align 8
  %27 = getelementptr inbounds %struct.eap_hdr, %struct.eap_hdr* %26, i64 1
  %28 = bitcast %struct.eap_hdr* %27 to i64*
  store i64* %28, i64** %11, align 8
  %29 = load i64*, i64** %11, align 8
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @EAP_TYPE_EXPANDED, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %66

33:                                               ; preds = %19
  %34 = load i64, i64* %12, align 8
  %35 = icmp ult i64 %34, 12
  br i1 %35, label %36, label %39

36:                                               ; preds = %33
  %37 = load i32, i32* @MSG_INFO, align 4
  %38 = call i32 @wpa_printf(i32 %37, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  store i64* null, i64** %5, align 8
  br label %85

39:                                               ; preds = %33
  %40 = load i64*, i64** %11, align 8
  %41 = getelementptr inbounds i64, i64* %40, i32 1
  store i64* %41, i64** %11, align 8
  %42 = load i64*, i64** %11, align 8
  %43 = call i32 @WPA_GET_BE24(i64* %42)
  store i32 %43, i32* %13, align 4
  %44 = load i64*, i64** %11, align 8
  %45 = getelementptr inbounds i64, i64* %44, i64 3
  store i64* %45, i64** %11, align 8
  %46 = load i64*, i64** %11, align 8
  %47 = call i64 @WPA_GET_BE32(i64* %46)
  store i64 %47, i64* %14, align 8
  %48 = load i64*, i64** %11, align 8
  %49 = getelementptr inbounds i64, i64* %48, i64 4
  store i64* %49, i64** %11, align 8
  %50 = load i32, i32* %13, align 4
  %51 = load i32, i32* %6, align 4
  %52 = icmp ne i32 %50, %51
  br i1 %52, label %57, label %53

53:                                               ; preds = %39
  %54 = load i64, i64* %14, align 8
  %55 = load i64, i64* %7, align 8
  %56 = icmp ne i64 %54, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %53, %39
  %58 = load i32, i32* @MSG_INFO, align 4
  %59 = call i32 @wpa_printf(i32 %58, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  store i64* null, i64** %5, align 8
  br label %85

60:                                               ; preds = %53
  %61 = load i64, i64* %12, align 8
  %62 = sub i64 %61, 4
  %63 = sub i64 %62, 8
  %64 = load i64*, i64** %9, align 8
  store i64 %63, i64* %64, align 8
  %65 = load i64*, i64** %11, align 8
  store i64* %65, i64** %5, align 8
  br label %85

66:                                               ; preds = %19
  %67 = load i32, i32* %6, align 4
  %68 = load i32, i32* @EAP_VENDOR_IETF, align 4
  %69 = icmp ne i32 %67, %68
  br i1 %69, label %75, label %70

70:                                               ; preds = %66
  %71 = load i64*, i64** %11, align 8
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* %7, align 8
  %74 = icmp ne i64 %72, %73
  br i1 %74, label %75, label %78

75:                                               ; preds = %70, %66
  %76 = load i32, i32* @MSG_INFO, align 4
  %77 = call i32 @wpa_printf(i32 %76, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  store i64* null, i64** %5, align 8
  br label %85

78:                                               ; preds = %70
  %79 = load i64, i64* %12, align 8
  %80 = sub i64 %79, 4
  %81 = sub i64 %80, 1
  %82 = load i64*, i64** %9, align 8
  store i64 %81, i64* %82, align 8
  %83 = load i64*, i64** %11, align 8
  %84 = getelementptr inbounds i64, i64* %83, i64 1
  store i64* %84, i64** %5, align 8
  br label %85

85:                                               ; preds = %78, %75, %60, %57, %36, %18
  %86 = load i64*, i64** %5, align 8
  ret i64* %86
}

declare dso_local i32 @eap_hdr_len_valid(%struct.wpabuf*, i32) #1

declare dso_local %struct.eap_hdr* @wpabuf_head(%struct.wpabuf*) #1

declare dso_local i64 @be_to_host16(i32) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32 @WPA_GET_BE24(i64*) #1

declare dso_local i64 @WPA_GET_BE32(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

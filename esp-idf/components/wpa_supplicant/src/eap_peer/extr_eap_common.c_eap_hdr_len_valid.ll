; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/eap_peer/extr_eap_common.c_eap_hdr_len_valid.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/eap_peer/extr_eap_common.c_eap_hdr_len_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }
%struct.eap_hdr = type { i32 }

@MSG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"EAP: Too short EAP frame\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"EAP: Invalid EAP length\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @eap_hdr_len_valid(%struct.wpabuf* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wpabuf*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.eap_hdr*, align 8
  %7 = alloca i64, align 8
  store %struct.wpabuf* %0, %struct.wpabuf** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %9 = icmp eq %struct.wpabuf* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %38

11:                                               ; preds = %2
  %12 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %13 = call %struct.eap_hdr* @wpabuf_head(%struct.wpabuf* %12)
  store %struct.eap_hdr* %13, %struct.eap_hdr** %6, align 8
  %14 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %15 = call i64 @wpabuf_len(%struct.wpabuf* %14)
  %16 = icmp ult i64 %15, 4
  br i1 %16, label %17, label %20

17:                                               ; preds = %11
  %18 = load i32, i32* @MSG_INFO, align 4
  %19 = call i32 @wpa_printf(i32 %18, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %38

20:                                               ; preds = %11
  %21 = load %struct.eap_hdr*, %struct.eap_hdr** %6, align 8
  %22 = getelementptr inbounds %struct.eap_hdr, %struct.eap_hdr* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @be_to_host16(i32 %23)
  store i64 %24, i64* %7, align 8
  %25 = load i64, i64* %7, align 8
  %26 = load i64, i64* %5, align 8
  %27 = add i64 4, %26
  %28 = icmp ult i64 %25, %27
  br i1 %28, label %34, label %29

29:                                               ; preds = %20
  %30 = load i64, i64* %7, align 8
  %31 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %32 = call i64 @wpabuf_len(%struct.wpabuf* %31)
  %33 = icmp ugt i64 %30, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %29, %20
  %35 = load i32, i32* @MSG_INFO, align 4
  %36 = call i32 @wpa_printf(i32 %35, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %38

37:                                               ; preds = %29
  store i32 1, i32* %3, align 4
  br label %38

38:                                               ; preds = %37, %34, %17, %10
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local %struct.eap_hdr* @wpabuf_head(%struct.wpabuf*) #1

declare dso_local i64 @wpabuf_len(%struct.wpabuf*) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i64 @be_to_host16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

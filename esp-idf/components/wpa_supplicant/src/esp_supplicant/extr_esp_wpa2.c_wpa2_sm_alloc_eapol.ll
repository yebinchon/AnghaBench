; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/esp_supplicant/extr_esp_wpa2.c_wpa2_sm_alloc_eapol.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/esp_supplicant/extr_esp_wpa2.c_wpa2_sm_alloc_eapol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sm = type { i32 }
%struct.ieee802_1x_hdr = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @wpa2_sm_alloc_eapol(%struct.eap_sm* %0, i32 %1, i8* %2, i32 %3, i64* %4, i8** %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca %struct.eap_sm*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64*, align 8
  %13 = alloca i8**, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.ieee802_1x_hdr*, align 8
  store %struct.eap_sm* %0, %struct.eap_sm** %8, align 8
  store i32 %1, i32* %9, align 4
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i64* %4, i64** %12, align 8
  store i8** %5, i8*** %13, align 8
  %16 = load i32, i32* %11, align 4
  %17 = sext i32 %16 to i64
  %18 = add i64 12, %17
  %19 = load i64*, i64** %12, align 8
  store i64 %18, i64* %19, align 8
  %20 = load i64*, i64** %12, align 8
  %21 = load i64, i64* %20, align 8
  %22 = add i64 %21, 4
  %23 = call i8* @os_malloc(i64 %22)
  store i8* %23, i8** %14, align 8
  %24 = load i8*, i8** %14, align 8
  %25 = icmp eq i8* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %6
  store i32* null, i32** %7, align 8
  br label %64

27:                                               ; preds = %6
  %28 = load i8*, i8** %14, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 4
  %30 = bitcast i8* %29 to %struct.ieee802_1x_hdr*
  store %struct.ieee802_1x_hdr* %30, %struct.ieee802_1x_hdr** %15, align 8
  %31 = load %struct.ieee802_1x_hdr*, %struct.ieee802_1x_hdr** %15, align 8
  %32 = getelementptr inbounds %struct.ieee802_1x_hdr, %struct.ieee802_1x_hdr* %31, i32 0, i32 0
  store i32 1, i32* %32, align 4
  %33 = load i32, i32* %9, align 4
  %34 = load %struct.ieee802_1x_hdr*, %struct.ieee802_1x_hdr** %15, align 8
  %35 = getelementptr inbounds %struct.ieee802_1x_hdr, %struct.ieee802_1x_hdr* %34, i32 0, i32 2
  store i32 %33, i32* %35, align 4
  %36 = load i32, i32* %11, align 4
  %37 = call i32 @host_to_be16(i32 %36)
  %38 = load %struct.ieee802_1x_hdr*, %struct.ieee802_1x_hdr** %15, align 8
  %39 = getelementptr inbounds %struct.ieee802_1x_hdr, %struct.ieee802_1x_hdr* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 4
  %40 = load i8*, i8** %10, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %42, label %48

42:                                               ; preds = %27
  %43 = load %struct.ieee802_1x_hdr*, %struct.ieee802_1x_hdr** %15, align 8
  %44 = getelementptr inbounds %struct.ieee802_1x_hdr, %struct.ieee802_1x_hdr* %43, i64 1
  %45 = load i8*, i8** %10, align 8
  %46 = load i32, i32* %11, align 4
  %47 = call i32 @memcpy(%struct.ieee802_1x_hdr* %44, i8* %45, i32 %46)
  br label %53

48:                                               ; preds = %27
  %49 = load %struct.ieee802_1x_hdr*, %struct.ieee802_1x_hdr** %15, align 8
  %50 = getelementptr inbounds %struct.ieee802_1x_hdr, %struct.ieee802_1x_hdr* %49, i64 1
  %51 = load i32, i32* %11, align 4
  %52 = call i32 @memset(%struct.ieee802_1x_hdr* %50, i32 0, i32 %51)
  br label %53

53:                                               ; preds = %48, %42
  %54 = load i8**, i8*** %13, align 8
  %55 = icmp ne i8** %54, null
  br i1 %55, label %56, label %61

56:                                               ; preds = %53
  %57 = load %struct.ieee802_1x_hdr*, %struct.ieee802_1x_hdr** %15, align 8
  %58 = getelementptr inbounds %struct.ieee802_1x_hdr, %struct.ieee802_1x_hdr* %57, i64 1
  %59 = bitcast %struct.ieee802_1x_hdr* %58 to i8*
  %60 = load i8**, i8*** %13, align 8
  store i8* %59, i8** %60, align 8
  br label %61

61:                                               ; preds = %56, %53
  %62 = load %struct.ieee802_1x_hdr*, %struct.ieee802_1x_hdr** %15, align 8
  %63 = bitcast %struct.ieee802_1x_hdr* %62 to i32*
  store i32* %63, i32** %7, align 8
  br label %64

64:                                               ; preds = %61, %26
  %65 = load i32*, i32** %7, align 8
  ret i32* %65
}

declare dso_local i8* @os_malloc(i64) #1

declare dso_local i32 @host_to_be16(i32) #1

declare dso_local i32 @memcpy(%struct.ieee802_1x_hdr*, i8*, i32) #1

declare dso_local i32 @memset(%struct.ieee802_1x_hdr*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

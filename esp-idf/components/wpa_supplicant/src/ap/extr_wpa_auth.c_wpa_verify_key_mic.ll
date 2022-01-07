; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/ap/extr_wpa_auth.c_wpa_verify_key_mic.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/ap/extr_wpa_auth.c_wpa_verify_key_mic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_ptk = type { i32 }
%struct.ieee802_1x_hdr = type { i32 }
%struct.wpa_eapol_key = type { i32*, i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"invalid data length, len=%u\0A\00", align 1
@WPA_KEY_INFO_TYPE_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"you mic\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"my mic\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wpa_ptk*, i32*, i64)* @wpa_verify_key_mic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wpa_verify_key_mic(%struct.wpa_ptk* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.wpa_ptk*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.ieee802_1x_hdr*, align 8
  %9 = alloca %struct.wpa_eapol_key*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [16 x i32], align 16
  %14 = alloca [8 x i8], align 1
  store %struct.wpa_ptk* %0, %struct.wpa_ptk** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %15 = load i64, i64* %7, align 8
  %16 = icmp ult i64 %15, 20
  br i1 %16, label %17, label %21

17:                                               ; preds = %3
  %18 = load i32, i32* @MSG_DEBUG, align 4
  %19 = load i64, i64* %7, align 8
  %20 = call i32 @wpa_printf(i32 %18, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i64 %19)
  store i32 -1, i32* %4, align 4
  br label %85

21:                                               ; preds = %3
  %22 = load i32*, i32** %6, align 8
  %23 = bitcast i32* %22 to %struct.ieee802_1x_hdr*
  store %struct.ieee802_1x_hdr* %23, %struct.ieee802_1x_hdr** %8, align 8
  %24 = load %struct.ieee802_1x_hdr*, %struct.ieee802_1x_hdr** %8, align 8
  %25 = getelementptr inbounds %struct.ieee802_1x_hdr, %struct.ieee802_1x_hdr* %24, i64 1
  %26 = bitcast %struct.ieee802_1x_hdr* %25 to %struct.wpa_eapol_key*
  store %struct.wpa_eapol_key* %26, %struct.wpa_eapol_key** %9, align 8
  %27 = load %struct.wpa_eapol_key*, %struct.wpa_eapol_key** %9, align 8
  %28 = getelementptr inbounds %struct.wpa_eapol_key, %struct.wpa_eapol_key* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @WPA_GET_BE16(i32 %29)
  store i32 %30, i32* %10, align 4
  %31 = getelementptr inbounds [16 x i32], [16 x i32]* %13, i64 0, i64 0
  %32 = load %struct.wpa_eapol_key*, %struct.wpa_eapol_key** %9, align 8
  %33 = getelementptr inbounds %struct.wpa_eapol_key, %struct.wpa_eapol_key* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = call i32 @memcpy(i32* %31, i32* %34, i32 16)
  %36 = load %struct.wpa_eapol_key*, %struct.wpa_eapol_key** %9, align 8
  %37 = getelementptr inbounds %struct.wpa_eapol_key, %struct.wpa_eapol_key* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = call i32 @memset(i32* %38, i32 0, i32 16)
  %40 = load %struct.wpa_ptk*, %struct.wpa_ptk** %5, align 8
  %41 = getelementptr inbounds %struct.wpa_ptk, %struct.wpa_ptk* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %10, align 4
  %44 = load i32, i32* @WPA_KEY_INFO_TYPE_MASK, align 4
  %45 = and i32 %43, %44
  %46 = load i32*, i32** %6, align 8
  %47 = load i64, i64* %7, align 8
  %48 = load %struct.wpa_eapol_key*, %struct.wpa_eapol_key** %9, align 8
  %49 = getelementptr inbounds %struct.wpa_eapol_key, %struct.wpa_eapol_key* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = call i32 @wpa_eapol_key_mic(i32 %42, i32 %45, i32* %46, i64 %47, i32* %50)
  store i32 %51, i32* %12, align 4
  %52 = load i32, i32* %12, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %61, label %54

54:                                               ; preds = %21
  %55 = getelementptr inbounds [16 x i32], [16 x i32]* %13, i64 0, i64 0
  %56 = load %struct.wpa_eapol_key*, %struct.wpa_eapol_key** %9, align 8
  %57 = getelementptr inbounds %struct.wpa_eapol_key, %struct.wpa_eapol_key* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = call i64 @memcmp(i32* %55, i32* %58, i32 16)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %54, %21
  store i32 -1, i32* %11, align 4
  br label %62

62:                                               ; preds = %61, %54
  %63 = getelementptr inbounds [8 x i8], [8 x i8]* %14, i64 0, i64 0
  %64 = call i32 @os_memset(i8* %63, i32 0, i32 8)
  %65 = getelementptr inbounds [8 x i8], [8 x i8]* %14, i64 0, i64 0
  %66 = call i32 @os_memcpy(i8* %65, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 8)
  %67 = getelementptr inbounds [8 x i8], [8 x i8]* %14, i64 0, i64 0
  %68 = getelementptr inbounds [16 x i32], [16 x i32]* %13, i64 0, i64 0
  %69 = call i32 @wpa_dump_mem(i8* %67, i32* %68, i32 16)
  %70 = getelementptr inbounds [8 x i8], [8 x i8]* %14, i64 0, i64 0
  %71 = call i32 @os_memset(i8* %70, i32 0, i32 8)
  %72 = getelementptr inbounds [8 x i8], [8 x i8]* %14, i64 0, i64 0
  %73 = call i32 @os_memcpy(i8* %72, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 7)
  %74 = getelementptr inbounds [8 x i8], [8 x i8]* %14, i64 0, i64 0
  %75 = load %struct.wpa_eapol_key*, %struct.wpa_eapol_key** %9, align 8
  %76 = getelementptr inbounds %struct.wpa_eapol_key, %struct.wpa_eapol_key* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = call i32 @wpa_dump_mem(i8* %74, i32* %77, i32 16)
  %79 = load %struct.wpa_eapol_key*, %struct.wpa_eapol_key** %9, align 8
  %80 = getelementptr inbounds %struct.wpa_eapol_key, %struct.wpa_eapol_key* %79, i32 0, i32 0
  %81 = load i32*, i32** %80, align 8
  %82 = getelementptr inbounds [16 x i32], [16 x i32]* %13, i64 0, i64 0
  %83 = call i32 @memcpy(i32* %81, i32* %82, i32 16)
  %84 = load i32, i32* %11, align 4
  store i32 %84, i32* %4, align 4
  br label %85

85:                                               ; preds = %62, %17
  %86 = load i32, i32* %4, align 4
  ret i32 %86
}

declare dso_local i32 @wpa_printf(i32, i8*, i64) #1

declare dso_local i32 @WPA_GET_BE16(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @wpa_eapol_key_mic(i32, i32, i32*, i64, i32*) #1

declare dso_local i64 @memcmp(i32*, i32*, i32) #1

declare dso_local i32 @os_memset(i8*, i32, i32) #1

declare dso_local i32 @os_memcpy(i8*, i8*, i32) #1

declare dso_local i32 @wpa_dump_mem(i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

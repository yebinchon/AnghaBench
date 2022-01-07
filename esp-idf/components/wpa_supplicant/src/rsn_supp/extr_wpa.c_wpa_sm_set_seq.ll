; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/rsn_supp/extr_wpa.c_wpa_sm_set_seq.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/rsn_supp/extr_wpa.c_wpa_sm_set_seq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_sm = type { i64, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64* }
%struct.TYPE_3__ = type { i64* }
%struct.wpa_eapol_key = type { i64* }

@WPA_KEY_RSC_LEN = common dso_local global i32 0, align 4
@WPA_PROTO_RSN = common dso_local global i64 0, align 8
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"WPA: RSC\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wpa_sm_set_seq(%struct.wpa_sm* %0, %struct.wpa_eapol_key* %1, i64 %2) #0 {
  %4 = alloca %struct.wpa_sm*, align 8
  %5 = alloca %struct.wpa_eapol_key*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  store %struct.wpa_sm* %0, %struct.wpa_sm** %4, align 8
  store %struct.wpa_eapol_key* %1, %struct.wpa_eapol_key** %5, align 8
  store i64 %2, i64* %6, align 8
  %11 = load i32, i32* @WPA_KEY_RSC_LEN, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %9, align 8
  %14 = alloca i64, i64 %12, align 16
  store i64 %12, i64* %10, align 8
  %15 = load i32, i32* @WPA_KEY_RSC_LEN, align 4
  %16 = call i32 @os_bzero(i64* %14, i32 %15)
  %17 = load %struct.wpa_sm*, %struct.wpa_sm** %4, align 8
  %18 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @WPA_PROTO_RSN, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %3
  store i64* %14, i64** %7, align 8
  br label %31

23:                                               ; preds = %3
  %24 = load %struct.wpa_eapol_key*, %struct.wpa_eapol_key** %5, align 8
  %25 = getelementptr inbounds %struct.wpa_eapol_key, %struct.wpa_eapol_key* %24, i32 0, i32 0
  %26 = load i64*, i64** %25, align 8
  store i64* %26, i64** %7, align 8
  %27 = load i32, i32* @MSG_DEBUG, align 4
  %28 = load i64*, i64** %7, align 8
  %29 = load i32, i32* @WPA_KEY_RSC_LEN, align 4
  %30 = call i32 @wpa_hexdump(i32 %27, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i64* %28, i32 %29)
  br label %31

31:                                               ; preds = %23, %22
  %32 = load i64, i64* %6, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %31
  %35 = load %struct.wpa_sm*, %struct.wpa_sm** %4, align 8
  %36 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i64*, i64** %37, align 8
  br label %44

39:                                               ; preds = %31
  %40 = load %struct.wpa_sm*, %struct.wpa_sm** %4, align 8
  %41 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i64*, i64** %42, align 8
  br label %44

44:                                               ; preds = %39, %34
  %45 = phi i64* [ %38, %34 ], [ %43, %39 ]
  store i64* %45, i64** %8, align 8
  %46 = load i64*, i64** %8, align 8
  %47 = load i64*, i64** %7, align 8
  %48 = load i32, i32* @WPA_KEY_RSC_LEN, align 4
  %49 = call i32 @memcpy(i64* %46, i64* %47, i32 %48)
  %50 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %50)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @os_bzero(i64*, i32) #2

declare dso_local i32 @wpa_hexdump(i32, i8*, i64*, i32) #2

declare dso_local i32 @memcpy(i64*, i64*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/ap/extr_wpa_auth.c_wpa_gmk_to_gtk.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/ap/extr_wpa_auth.c_wpa_gmk_to_gtk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ETH_ALEN = common dso_local global i32 0, align 4
@WPA_NONCE_LEN = common dso_local global i32 0, align 4
@WPA_GMK_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i32*, i32*, i32*, i64)* @wpa_gmk_to_gtk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wpa_gmk_to_gtk(i32* %0, i8* %1, i32* %2, i32* %3, i32* %4, i64 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store i64 %5, i64* %12, align 8
  %17 = load i32, i32* @ETH_ALEN, align 4
  %18 = load i32, i32* @WPA_NONCE_LEN, align 4
  %19 = add nsw i32 %17, %18
  %20 = add nsw i32 %19, 8
  %21 = add nsw i32 %20, 16
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %13, align 8
  %24 = alloca i32, i64 %22, align 16
  store i64 %22, i64* %14, align 8
  store i32 0, i32* %16, align 4
  %25 = load i32*, i32** %9, align 8
  %26 = load i32, i32* @ETH_ALEN, align 4
  %27 = call i32 @memcpy(i32* %24, i32* %25, i32 %26)
  %28 = load i32, i32* @ETH_ALEN, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %24, i64 %29
  %31 = load i32*, i32** %10, align 8
  %32 = load i32, i32* @WPA_NONCE_LEN, align 4
  %33 = call i32 @memcpy(i32* %30, i32* %31, i32 %32)
  %34 = load i32, i32* @ETH_ALEN, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %24, i64 %35
  %37 = load i32, i32* @WPA_NONCE_LEN, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  store i32* %39, i32** %15, align 8
  %40 = load i32*, i32** %15, align 8
  %41 = call i32 @wpa_get_ntp_timestamp(i32* %40)
  %42 = load i32*, i32** %15, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 8
  store i32* %43, i32** %15, align 8
  %44 = load i32*, i32** %15, align 8
  %45 = call i64 @os_get_random(i32* %44, i32 16)
  %46 = icmp slt i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %6
  store i32 -1, i32* %16, align 4
  br label %48

48:                                               ; preds = %47, %6
  %49 = load i32*, i32** %7, align 8
  %50 = load i32, i32* @WPA_GMK_LEN, align 4
  %51 = load i8*, i8** %8, align 8
  %52 = mul nuw i64 4, %22
  %53 = trunc i64 %52 to i32
  %54 = load i32*, i32** %11, align 8
  %55 = load i64, i64* %12, align 8
  %56 = call i64 @sha1_prf(i32* %49, i32 %50, i8* %51, i32* %24, i32 %53, i32* %54, i64 %55)
  %57 = icmp slt i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %48
  store i32 -1, i32* %16, align 4
  br label %59

59:                                               ; preds = %58, %48
  %60 = load i32, i32* %16, align 4
  %61 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %61)
  ret i32 %60
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #2

declare dso_local i32 @wpa_get_ntp_timestamp(i32*) #2

declare dso_local i64 @os_get_random(i32*, i32) #2

declare dso_local i64 @sha1_prf(i32*, i32, i8*, i32*, i32, i32*, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

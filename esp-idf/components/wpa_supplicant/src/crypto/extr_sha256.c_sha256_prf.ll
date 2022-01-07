; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/crypto/extr_sha256.c_sha256_prf.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/crypto/extr_sha256.c_sha256_prf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SHA256_MAC_LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sha256_prf(i32* %0, i64 %1, i8* %2, i32* %3, i64 %4, i32* %5, i64 %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  %20 = alloca [4 x i32*], align 16
  %21 = alloca [4 x i64], align 16
  %22 = alloca [2 x i32], align 4
  %23 = alloca [2 x i32], align 4
  store i32* %0, i32** %8, align 8
  store i64 %1, i64* %9, align 8
  store i8* %2, i8** %10, align 8
  store i32* %3, i32** %11, align 8
  store i64 %4, i64* %12, align 8
  store i32* %5, i32** %13, align 8
  store i64 %6, i64* %14, align 8
  store i64 1, i64* %15, align 8
  %24 = load i32, i32* @SHA256_MAC_LEN, align 4
  %25 = zext i32 %24 to i64
  %26 = call i8* @llvm.stacksave()
  store i8* %26, i8** %18, align 8
  %27 = alloca i32, i64 %25, align 16
  store i64 %25, i64* %19, align 8
  %28 = getelementptr inbounds [2 x i32], [2 x i32]* %22, i64 0, i64 0
  %29 = getelementptr inbounds [4 x i32*], [4 x i32*]* %20, i64 0, i64 0
  store i32* %28, i32** %29, align 16
  %30 = getelementptr inbounds [4 x i64], [4 x i64]* %21, i64 0, i64 0
  store i64 2, i64* %30, align 16
  %31 = load i8*, i8** %10, align 8
  %32 = bitcast i8* %31 to i32*
  %33 = getelementptr inbounds [4 x i32*], [4 x i32*]* %20, i64 0, i64 1
  store i32* %32, i32** %33, align 8
  %34 = load i8*, i8** %10, align 8
  %35 = call i64 @os_strlen(i8* %34)
  %36 = getelementptr inbounds [4 x i64], [4 x i64]* %21, i64 0, i64 1
  store i64 %35, i64* %36, align 8
  %37 = load i32*, i32** %11, align 8
  %38 = getelementptr inbounds [4 x i32*], [4 x i32*]* %20, i64 0, i64 2
  store i32* %37, i32** %38, align 16
  %39 = load i64, i64* %12, align 8
  %40 = getelementptr inbounds [4 x i64], [4 x i64]* %21, i64 0, i64 2
  store i64 %39, i64* %40, align 16
  %41 = getelementptr inbounds [2 x i32], [2 x i32]* %23, i64 0, i64 0
  %42 = getelementptr inbounds [4 x i32*], [4 x i32*]* %20, i64 0, i64 3
  store i32* %41, i32** %42, align 8
  %43 = getelementptr inbounds [4 x i64], [4 x i64]* %21, i64 0, i64 3
  store i64 8, i64* %43, align 8
  %44 = getelementptr inbounds [2 x i32], [2 x i32]* %23, i64 0, i64 0
  %45 = load i64, i64* %14, align 8
  %46 = mul i64 %45, 8
  %47 = call i32 @WPA_PUT_LE16(i32* %44, i64 %46)
  store i64 0, i64* %16, align 8
  br label %48

48:                                               ; preds = %87, %7
  %49 = load i64, i64* %16, align 8
  %50 = load i64, i64* %14, align 8
  %51 = icmp ult i64 %49, %50
  br i1 %51, label %52, label %90

52:                                               ; preds = %48
  %53 = load i64, i64* %14, align 8
  %54 = load i64, i64* %16, align 8
  %55 = sub i64 %53, %54
  store i64 %55, i64* %17, align 8
  %56 = getelementptr inbounds [2 x i32], [2 x i32]* %22, i64 0, i64 0
  %57 = load i64, i64* %15, align 8
  %58 = call i32 @WPA_PUT_LE16(i32* %56, i64 %57)
  %59 = load i64, i64* %17, align 8
  %60 = load i32, i32* @SHA256_MAC_LEN, align 4
  %61 = sext i32 %60 to i64
  %62 = icmp uge i64 %59, %61
  br i1 %62, label %63, label %76

63:                                               ; preds = %52
  %64 = load i32*, i32** %8, align 8
  %65 = load i64, i64* %9, align 8
  %66 = getelementptr inbounds [4 x i32*], [4 x i32*]* %20, i64 0, i64 0
  %67 = getelementptr inbounds [4 x i64], [4 x i64]* %21, i64 0, i64 0
  %68 = load i32*, i32** %13, align 8
  %69 = load i64, i64* %16, align 8
  %70 = getelementptr inbounds i32, i32* %68, i64 %69
  %71 = call i32 @hmac_sha256_vector(i32* %64, i64 %65, i32 4, i32** %66, i64* %67, i32* %70)
  %72 = load i32, i32* @SHA256_MAC_LEN, align 4
  %73 = sext i32 %72 to i64
  %74 = load i64, i64* %16, align 8
  %75 = add i64 %74, %73
  store i64 %75, i64* %16, align 8
  br label %87

76:                                               ; preds = %52
  %77 = load i32*, i32** %8, align 8
  %78 = load i64, i64* %9, align 8
  %79 = getelementptr inbounds [4 x i32*], [4 x i32*]* %20, i64 0, i64 0
  %80 = getelementptr inbounds [4 x i64], [4 x i64]* %21, i64 0, i64 0
  %81 = call i32 @hmac_sha256_vector(i32* %77, i64 %78, i32 4, i32** %79, i64* %80, i32* %27)
  %82 = load i32*, i32** %13, align 8
  %83 = load i64, i64* %16, align 8
  %84 = getelementptr inbounds i32, i32* %82, i64 %83
  %85 = load i64, i64* %17, align 8
  %86 = call i32 @os_memcpy(i32* %84, i32* %27, i64 %85)
  br label %90

87:                                               ; preds = %63
  %88 = load i64, i64* %15, align 8
  %89 = add i64 %88, 1
  store i64 %89, i64* %15, align 8
  br label %48

90:                                               ; preds = %76, %48
  %91 = load i8*, i8** %18, align 8
  call void @llvm.stackrestore(i8* %91)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @os_strlen(i8*) #2

declare dso_local i32 @WPA_PUT_LE16(i32*, i64) #2

declare dso_local i32 @hmac_sha256_vector(i32*, i64, i32, i32**, i64*, i32*) #2

declare dso_local i32 @os_memcpy(i32*, i32*, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

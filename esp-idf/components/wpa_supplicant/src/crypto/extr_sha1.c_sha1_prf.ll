; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/crypto/extr_sha1.c_sha1_prf.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/crypto/extr_sha1.c_sha1_prf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SHA1_MAC_LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sha1_prf(i8* %0, i64 %1, i8* %2, i8* %3, i64 %4, i8* %5, i64 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8, align 1
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca [3 x i8*], align 16
  %23 = alloca [3 x i64], align 16
  %24 = alloca i32, align 4
  store i8* %0, i8** %9, align 8
  store i64 %1, i64* %10, align 8
  store i8* %2, i8** %11, align 8
  store i8* %3, i8** %12, align 8
  store i64 %4, i64* %13, align 8
  store i8* %5, i8** %14, align 8
  store i64 %6, i64* %15, align 8
  store i8 0, i8* %16, align 1
  %25 = load i32, i32* @SHA1_MAC_LEN, align 4
  %26 = zext i32 %25 to i64
  %27 = call i8* @llvm.stacksave()
  store i8* %27, i8** %19, align 8
  %28 = alloca i8, i64 %26, align 16
  store i64 %26, i64* %20, align 8
  %29 = load i8*, i8** %11, align 8
  %30 = call i32 @os_strlen(i8* %29)
  %31 = add nsw i32 %30, 1
  %32 = sext i32 %31 to i64
  store i64 %32, i64* %21, align 8
  %33 = load i8*, i8** %11, align 8
  %34 = getelementptr inbounds [3 x i8*], [3 x i8*]* %22, i64 0, i64 0
  store i8* %33, i8** %34, align 16
  %35 = load i64, i64* %21, align 8
  %36 = getelementptr inbounds [3 x i64], [3 x i64]* %23, i64 0, i64 0
  store i64 %35, i64* %36, align 16
  %37 = load i8*, i8** %12, align 8
  %38 = getelementptr inbounds [3 x i8*], [3 x i8*]* %22, i64 0, i64 1
  store i8* %37, i8** %38, align 8
  %39 = load i64, i64* %13, align 8
  %40 = getelementptr inbounds [3 x i64], [3 x i64]* %23, i64 0, i64 1
  store i64 %39, i64* %40, align 8
  %41 = getelementptr inbounds [3 x i8*], [3 x i8*]* %22, i64 0, i64 2
  store i8* %16, i8** %41, align 16
  %42 = getelementptr inbounds [3 x i64], [3 x i64]* %23, i64 0, i64 2
  store i64 1, i64* %42, align 16
  store i64 0, i64* %17, align 8
  br label %43

43:                                               ; preds = %85, %7
  %44 = load i64, i64* %17, align 8
  %45 = load i64, i64* %15, align 8
  %46 = icmp ult i64 %44, %45
  br i1 %46, label %47, label %88

47:                                               ; preds = %43
  %48 = load i64, i64* %15, align 8
  %49 = load i64, i64* %17, align 8
  %50 = sub i64 %48, %49
  store i64 %50, i64* %18, align 8
  %51 = load i64, i64* %18, align 8
  %52 = load i32, i32* @SHA1_MAC_LEN, align 4
  %53 = sext i32 %52 to i64
  %54 = icmp uge i64 %51, %53
  br i1 %54, label %55, label %71

55:                                               ; preds = %47
  %56 = load i8*, i8** %9, align 8
  %57 = load i64, i64* %10, align 8
  %58 = getelementptr inbounds [3 x i8*], [3 x i8*]* %22, i64 0, i64 0
  %59 = getelementptr inbounds [3 x i64], [3 x i64]* %23, i64 0, i64 0
  %60 = load i8*, i8** %14, align 8
  %61 = load i64, i64* %17, align 8
  %62 = getelementptr inbounds i8, i8* %60, i64 %61
  %63 = call i64 @hmac_sha1_vector(i8* %56, i64 %57, i32 3, i8** %58, i64* %59, i8* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %55
  store i32 -1, i32* %8, align 4
  store i32 1, i32* %24, align 4
  br label %89

66:                                               ; preds = %55
  %67 = load i32, i32* @SHA1_MAC_LEN, align 4
  %68 = sext i32 %67 to i64
  %69 = load i64, i64* %17, align 8
  %70 = add i64 %69, %68
  store i64 %70, i64* %17, align 8
  br label %85

71:                                               ; preds = %47
  %72 = load i8*, i8** %9, align 8
  %73 = load i64, i64* %10, align 8
  %74 = getelementptr inbounds [3 x i8*], [3 x i8*]* %22, i64 0, i64 0
  %75 = getelementptr inbounds [3 x i64], [3 x i64]* %23, i64 0, i64 0
  %76 = call i64 @hmac_sha1_vector(i8* %72, i64 %73, i32 3, i8** %74, i64* %75, i8* %28)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %71
  store i32 -1, i32* %8, align 4
  store i32 1, i32* %24, align 4
  br label %89

79:                                               ; preds = %71
  %80 = load i8*, i8** %14, align 8
  %81 = load i64, i64* %17, align 8
  %82 = getelementptr inbounds i8, i8* %80, i64 %81
  %83 = load i64, i64* %18, align 8
  %84 = call i32 @os_memcpy(i8* %82, i8* %28, i64 %83)
  br label %88

85:                                               ; preds = %66
  %86 = load i8, i8* %16, align 1
  %87 = add i8 %86, 1
  store i8 %87, i8* %16, align 1
  br label %43

88:                                               ; preds = %79, %43
  store i32 0, i32* %8, align 4
  store i32 1, i32* %24, align 4
  br label %89

89:                                               ; preds = %88, %78, %65
  %90 = load i8*, i8** %19, align 8
  call void @llvm.stackrestore(i8* %90)
  %91 = load i32, i32* %8, align 4
  ret i32 %91
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @os_strlen(i8*) #2

declare dso_local i64 @hmac_sha1_vector(i8*, i64, i32, i8**, i64*, i8*) #2

declare dso_local i32 @os_memcpy(i8*, i8*, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

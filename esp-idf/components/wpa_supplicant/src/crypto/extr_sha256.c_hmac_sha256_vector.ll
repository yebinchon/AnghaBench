; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/crypto/extr_sha256.c_hmac_sha256_vector.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/crypto/extr_sha256.c_hmac_sha256_vector.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SHA256_MAC_LEN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hmac_sha256_vector(i8* %0, i64 %1, i64 %2, i8** %3, i64* %4, i8* %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca [64 x i8], align 16
  %14 = alloca [32 x i8], align 16
  %15 = alloca [6 x i8*], align 16
  %16 = alloca [6 x i64], align 16
  %17 = alloca i64, align 8
  store i8* %0, i8** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i8** %3, i8*** %10, align 8
  store i64* %4, i64** %11, align 8
  store i8* %5, i8** %12, align 8
  %18 = load i64, i64* %9, align 8
  %19 = icmp ugt i64 %18, 5
  br i1 %19, label %20, label %21

20:                                               ; preds = %6
  br label %113

21:                                               ; preds = %6
  %22 = load i64, i64* %8, align 8
  %23 = icmp ugt i64 %22, 64
  br i1 %23, label %24, label %28

24:                                               ; preds = %21
  %25 = getelementptr inbounds [32 x i8], [32 x i8]* %14, i64 0, i64 0
  %26 = call i32 @sha256_vector(i32 1, i8** %7, i64* %8, i8* %25)
  %27 = getelementptr inbounds [32 x i8], [32 x i8]* %14, i64 0, i64 0
  store i8* %27, i8** %7, align 8
  store i64 32, i64* %8, align 8
  br label %28

28:                                               ; preds = %24, %21
  %29 = getelementptr inbounds [64 x i8], [64 x i8]* %13, i64 0, i64 0
  %30 = call i32 @os_memset(i8* %29, i32 0, i32 64)
  %31 = getelementptr inbounds [64 x i8], [64 x i8]* %13, i64 0, i64 0
  %32 = load i8*, i8** %7, align 8
  %33 = load i64, i64* %8, align 8
  %34 = call i32 @os_memcpy(i8* %31, i8* %32, i64 %33)
  store i64 0, i64* %17, align 8
  br label %35

35:                                               ; preds = %45, %28
  %36 = load i64, i64* %17, align 8
  %37 = icmp ult i64 %36, 64
  br i1 %37, label %38, label %48

38:                                               ; preds = %35
  %39 = load i64, i64* %17, align 8
  %40 = getelementptr inbounds [64 x i8], [64 x i8]* %13, i64 0, i64 %39
  %41 = load i8, i8* %40, align 1
  %42 = zext i8 %41 to i32
  %43 = xor i32 %42, 54
  %44 = trunc i32 %43 to i8
  store i8 %44, i8* %40, align 1
  br label %45

45:                                               ; preds = %38
  %46 = load i64, i64* %17, align 8
  %47 = add i64 %46, 1
  store i64 %47, i64* %17, align 8
  br label %35

48:                                               ; preds = %35
  %49 = getelementptr inbounds [64 x i8], [64 x i8]* %13, i64 0, i64 0
  %50 = getelementptr inbounds [6 x i8*], [6 x i8*]* %15, i64 0, i64 0
  store i8* %49, i8** %50, align 16
  %51 = getelementptr inbounds [6 x i64], [6 x i64]* %16, i64 0, i64 0
  store i64 64, i64* %51, align 16
  store i64 0, i64* %17, align 8
  br label %52

52:                                               ; preds = %71, %48
  %53 = load i64, i64* %17, align 8
  %54 = load i64, i64* %9, align 8
  %55 = icmp ult i64 %53, %54
  br i1 %55, label %56, label %74

56:                                               ; preds = %52
  %57 = load i8**, i8*** %10, align 8
  %58 = load i64, i64* %17, align 8
  %59 = getelementptr inbounds i8*, i8** %57, i64 %58
  %60 = load i8*, i8** %59, align 8
  %61 = load i64, i64* %17, align 8
  %62 = add i64 %61, 1
  %63 = getelementptr inbounds [6 x i8*], [6 x i8*]* %15, i64 0, i64 %62
  store i8* %60, i8** %63, align 8
  %64 = load i64*, i64** %11, align 8
  %65 = load i64, i64* %17, align 8
  %66 = getelementptr inbounds i64, i64* %64, i64 %65
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* %17, align 8
  %69 = add i64 %68, 1
  %70 = getelementptr inbounds [6 x i64], [6 x i64]* %16, i64 0, i64 %69
  store i64 %67, i64* %70, align 8
  br label %71

71:                                               ; preds = %56
  %72 = load i64, i64* %17, align 8
  %73 = add i64 %72, 1
  store i64 %73, i64* %17, align 8
  br label %52

74:                                               ; preds = %52
  %75 = load i64, i64* %9, align 8
  %76 = add i64 1, %75
  %77 = trunc i64 %76 to i32
  %78 = getelementptr inbounds [6 x i8*], [6 x i8*]* %15, i64 0, i64 0
  %79 = getelementptr inbounds [6 x i64], [6 x i64]* %16, i64 0, i64 0
  %80 = load i8*, i8** %12, align 8
  %81 = call i32 @sha256_vector(i32 %77, i8** %78, i64* %79, i8* %80)
  %82 = getelementptr inbounds [64 x i8], [64 x i8]* %13, i64 0, i64 0
  %83 = call i32 @os_memset(i8* %82, i32 0, i32 64)
  %84 = getelementptr inbounds [64 x i8], [64 x i8]* %13, i64 0, i64 0
  %85 = load i8*, i8** %7, align 8
  %86 = load i64, i64* %8, align 8
  %87 = call i32 @os_memcpy(i8* %84, i8* %85, i64 %86)
  store i64 0, i64* %17, align 8
  br label %88

88:                                               ; preds = %98, %74
  %89 = load i64, i64* %17, align 8
  %90 = icmp ult i64 %89, 64
  br i1 %90, label %91, label %101

91:                                               ; preds = %88
  %92 = load i64, i64* %17, align 8
  %93 = getelementptr inbounds [64 x i8], [64 x i8]* %13, i64 0, i64 %92
  %94 = load i8, i8* %93, align 1
  %95 = zext i8 %94 to i32
  %96 = xor i32 %95, 92
  %97 = trunc i32 %96 to i8
  store i8 %97, i8* %93, align 1
  br label %98

98:                                               ; preds = %91
  %99 = load i64, i64* %17, align 8
  %100 = add i64 %99, 1
  store i64 %100, i64* %17, align 8
  br label %88

101:                                              ; preds = %88
  %102 = getelementptr inbounds [64 x i8], [64 x i8]* %13, i64 0, i64 0
  %103 = getelementptr inbounds [6 x i8*], [6 x i8*]* %15, i64 0, i64 0
  store i8* %102, i8** %103, align 16
  %104 = getelementptr inbounds [6 x i64], [6 x i64]* %16, i64 0, i64 0
  store i64 64, i64* %104, align 16
  %105 = load i8*, i8** %12, align 8
  %106 = getelementptr inbounds [6 x i8*], [6 x i8*]* %15, i64 0, i64 1
  store i8* %105, i8** %106, align 8
  %107 = load i64, i64* @SHA256_MAC_LEN, align 8
  %108 = getelementptr inbounds [6 x i64], [6 x i64]* %16, i64 0, i64 1
  store i64 %107, i64* %108, align 8
  %109 = getelementptr inbounds [6 x i8*], [6 x i8*]* %15, i64 0, i64 0
  %110 = getelementptr inbounds [6 x i64], [6 x i64]* %16, i64 0, i64 0
  %111 = load i8*, i8** %12, align 8
  %112 = call i32 @sha256_vector(i32 2, i8** %109, i64* %110, i8* %111)
  br label %113

113:                                              ; preds = %101, %20
  ret void
}

declare dso_local i32 @sha256_vector(i32, i8**, i64*, i8*) #1

declare dso_local i32 @os_memset(i8*, i32, i32) #1

declare dso_local i32 @os_memcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

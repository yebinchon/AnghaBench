; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_xtea.c_mbedtls_xtea_crypt_cbc.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_xtea.c_mbedtls_xtea_crypt_cbc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MBEDTLS_ERR_XTEA_INVALID_INPUT_LENGTH = common dso_local global i32 0, align 4
@MBEDTLS_XTEA_DECRYPT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_xtea_crypt_cbc(i32* %0, i32 %1, i64 %2, i8* %3, i8* %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca [8 x i8], align 1
  store i32* %0, i32** %8, align 8
  store i32 %1, i32* %9, align 4
  store i64 %2, i64* %10, align 8
  store i8* %3, i8** %11, align 8
  store i8* %4, i8** %12, align 8
  store i8* %5, i8** %13, align 8
  %16 = load i64, i64* %10, align 8
  %17 = urem i64 %16, 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %6
  %20 = load i32, i32* @MBEDTLS_ERR_XTEA_INVALID_INPUT_LENGTH, align 4
  store i32 %20, i32* %7, align 4
  br label %121

21:                                               ; preds = %6
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* @MBEDTLS_XTEA_DECRYPT, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %74

25:                                               ; preds = %21
  br label %26

26:                                               ; preds = %63, %25
  %27 = load i64, i64* %10, align 8
  %28 = icmp ugt i64 %27, 0
  br i1 %28, label %29, label %73

29:                                               ; preds = %26
  %30 = getelementptr inbounds [8 x i8], [8 x i8]* %15, i64 0, i64 0
  %31 = load i8*, i8** %12, align 8
  %32 = call i32 @memcpy(i8* %30, i8* %31, i32 8)
  %33 = load i32*, i32** %8, align 8
  %34 = load i32, i32* %9, align 4
  %35 = load i8*, i8** %12, align 8
  %36 = load i8*, i8** %13, align 8
  %37 = call i32 @mbedtls_xtea_crypt_ecb(i32* %33, i32 %34, i8* %35, i8* %36)
  store i32 0, i32* %14, align 4
  br label %38

38:                                               ; preds = %60, %29
  %39 = load i32, i32* %14, align 4
  %40 = icmp slt i32 %39, 8
  br i1 %40, label %41, label %63

41:                                               ; preds = %38
  %42 = load i8*, i8** %13, align 8
  %43 = load i32, i32* %14, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8, i8* %42, i64 %44
  %46 = load i8, i8* %45, align 1
  %47 = zext i8 %46 to i32
  %48 = load i8*, i8** %11, align 8
  %49 = load i32, i32* %14, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8, i8* %48, i64 %50
  %52 = load i8, i8* %51, align 1
  %53 = zext i8 %52 to i32
  %54 = xor i32 %47, %53
  %55 = trunc i32 %54 to i8
  %56 = load i8*, i8** %13, align 8
  %57 = load i32, i32* %14, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i8, i8* %56, i64 %58
  store i8 %55, i8* %59, align 1
  br label %60

60:                                               ; preds = %41
  %61 = load i32, i32* %14, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %14, align 4
  br label %38

63:                                               ; preds = %38
  %64 = load i8*, i8** %11, align 8
  %65 = getelementptr inbounds [8 x i8], [8 x i8]* %15, i64 0, i64 0
  %66 = call i32 @memcpy(i8* %64, i8* %65, i32 8)
  %67 = load i8*, i8** %12, align 8
  %68 = getelementptr inbounds i8, i8* %67, i64 8
  store i8* %68, i8** %12, align 8
  %69 = load i8*, i8** %13, align 8
  %70 = getelementptr inbounds i8, i8* %69, i64 8
  store i8* %70, i8** %13, align 8
  %71 = load i64, i64* %10, align 8
  %72 = sub i64 %71, 8
  store i64 %72, i64* %10, align 8
  br label %26

73:                                               ; preds = %26
  br label %120

74:                                               ; preds = %21
  br label %75

75:                                               ; preds = %104, %74
  %76 = load i64, i64* %10, align 8
  %77 = icmp ugt i64 %76, 0
  br i1 %77, label %78, label %119

78:                                               ; preds = %75
  store i32 0, i32* %14, align 4
  br label %79

79:                                               ; preds = %101, %78
  %80 = load i32, i32* %14, align 4
  %81 = icmp slt i32 %80, 8
  br i1 %81, label %82, label %104

82:                                               ; preds = %79
  %83 = load i8*, i8** %12, align 8
  %84 = load i32, i32* %14, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i8, i8* %83, i64 %85
  %87 = load i8, i8* %86, align 1
  %88 = zext i8 %87 to i32
  %89 = load i8*, i8** %11, align 8
  %90 = load i32, i32* %14, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i8, i8* %89, i64 %91
  %93 = load i8, i8* %92, align 1
  %94 = zext i8 %93 to i32
  %95 = xor i32 %88, %94
  %96 = trunc i32 %95 to i8
  %97 = load i8*, i8** %13, align 8
  %98 = load i32, i32* %14, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i8, i8* %97, i64 %99
  store i8 %96, i8* %100, align 1
  br label %101

101:                                              ; preds = %82
  %102 = load i32, i32* %14, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %14, align 4
  br label %79

104:                                              ; preds = %79
  %105 = load i32*, i32** %8, align 8
  %106 = load i32, i32* %9, align 4
  %107 = load i8*, i8** %13, align 8
  %108 = load i8*, i8** %13, align 8
  %109 = call i32 @mbedtls_xtea_crypt_ecb(i32* %105, i32 %106, i8* %107, i8* %108)
  %110 = load i8*, i8** %11, align 8
  %111 = load i8*, i8** %13, align 8
  %112 = call i32 @memcpy(i8* %110, i8* %111, i32 8)
  %113 = load i8*, i8** %12, align 8
  %114 = getelementptr inbounds i8, i8* %113, i64 8
  store i8* %114, i8** %12, align 8
  %115 = load i8*, i8** %13, align 8
  %116 = getelementptr inbounds i8, i8* %115, i64 8
  store i8* %116, i8** %13, align 8
  %117 = load i64, i64* %10, align 8
  %118 = sub i64 %117, 8
  store i64 %118, i64* %10, align 8
  br label %75

119:                                              ; preds = %75
  br label %120

120:                                              ; preds = %119, %73
  store i32 0, i32* %7, align 4
  br label %121

121:                                              ; preds = %120, %19
  %122 = load i32, i32* %7, align 4
  ret i32 %122
}

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @mbedtls_xtea_crypt_ecb(i32*, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

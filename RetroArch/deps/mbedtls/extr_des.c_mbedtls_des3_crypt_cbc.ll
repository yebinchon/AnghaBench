; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_des.c_mbedtls_des3_crypt_cbc.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_des.c_mbedtls_des3_crypt_cbc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MBEDTLS_ERR_DES_INVALID_INPUT_LENGTH = common dso_local global i32 0, align 4
@MBEDTLS_DES_ENCRYPT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_des3_crypt_cbc(i32* %0, i32 %1, i64 %2, i8* %3, i8* %4, i8* %5) #0 {
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
  %20 = load i32, i32* @MBEDTLS_ERR_DES_INVALID_INPUT_LENGTH, align 4
  store i32 %20, i32* %7, align 4
  br label %119

21:                                               ; preds = %6
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* @MBEDTLS_DES_ENCRYPT, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %70

25:                                               ; preds = %21
  br label %26

26:                                               ; preds = %55, %25
  %27 = load i64, i64* %10, align 8
  %28 = icmp ugt i64 %27, 0
  br i1 %28, label %29, label %69

29:                                               ; preds = %26
  store i32 0, i32* %14, align 4
  br label %30

30:                                               ; preds = %52, %29
  %31 = load i32, i32* %14, align 4
  %32 = icmp slt i32 %31, 8
  br i1 %32, label %33, label %55

33:                                               ; preds = %30
  %34 = load i8*, i8** %12, align 8
  %35 = load i32, i32* %14, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8, i8* %34, i64 %36
  %38 = load i8, i8* %37, align 1
  %39 = zext i8 %38 to i32
  %40 = load i8*, i8** %11, align 8
  %41 = load i32, i32* %14, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8, i8* %40, i64 %42
  %44 = load i8, i8* %43, align 1
  %45 = zext i8 %44 to i32
  %46 = xor i32 %39, %45
  %47 = trunc i32 %46 to i8
  %48 = load i8*, i8** %13, align 8
  %49 = load i32, i32* %14, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8, i8* %48, i64 %50
  store i8 %47, i8* %51, align 1
  br label %52

52:                                               ; preds = %33
  %53 = load i32, i32* %14, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %14, align 4
  br label %30

55:                                               ; preds = %30
  %56 = load i32*, i32** %8, align 8
  %57 = load i8*, i8** %13, align 8
  %58 = load i8*, i8** %13, align 8
  %59 = call i32 @mbedtls_des3_crypt_ecb(i32* %56, i8* %57, i8* %58)
  %60 = load i8*, i8** %11, align 8
  %61 = load i8*, i8** %13, align 8
  %62 = call i32 @memcpy(i8* %60, i8* %61, i32 8)
  %63 = load i8*, i8** %12, align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 8
  store i8* %64, i8** %12, align 8
  %65 = load i8*, i8** %13, align 8
  %66 = getelementptr inbounds i8, i8* %65, i64 8
  store i8* %66, i8** %13, align 8
  %67 = load i64, i64* %10, align 8
  %68 = sub i64 %67, 8
  store i64 %68, i64* %10, align 8
  br label %26

69:                                               ; preds = %26
  br label %118

70:                                               ; preds = %21
  br label %71

71:                                               ; preds = %107, %70
  %72 = load i64, i64* %10, align 8
  %73 = icmp ugt i64 %72, 0
  br i1 %73, label %74, label %117

74:                                               ; preds = %71
  %75 = getelementptr inbounds [8 x i8], [8 x i8]* %15, i64 0, i64 0
  %76 = load i8*, i8** %12, align 8
  %77 = call i32 @memcpy(i8* %75, i8* %76, i32 8)
  %78 = load i32*, i32** %8, align 8
  %79 = load i8*, i8** %12, align 8
  %80 = load i8*, i8** %13, align 8
  %81 = call i32 @mbedtls_des3_crypt_ecb(i32* %78, i8* %79, i8* %80)
  store i32 0, i32* %14, align 4
  br label %82

82:                                               ; preds = %104, %74
  %83 = load i32, i32* %14, align 4
  %84 = icmp slt i32 %83, 8
  br i1 %84, label %85, label %107

85:                                               ; preds = %82
  %86 = load i8*, i8** %13, align 8
  %87 = load i32, i32* %14, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i8, i8* %86, i64 %88
  %90 = load i8, i8* %89, align 1
  %91 = zext i8 %90 to i32
  %92 = load i8*, i8** %11, align 8
  %93 = load i32, i32* %14, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i8, i8* %92, i64 %94
  %96 = load i8, i8* %95, align 1
  %97 = zext i8 %96 to i32
  %98 = xor i32 %91, %97
  %99 = trunc i32 %98 to i8
  %100 = load i8*, i8** %13, align 8
  %101 = load i32, i32* %14, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i8, i8* %100, i64 %102
  store i8 %99, i8* %103, align 1
  br label %104

104:                                              ; preds = %85
  %105 = load i32, i32* %14, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %14, align 4
  br label %82

107:                                              ; preds = %82
  %108 = load i8*, i8** %11, align 8
  %109 = getelementptr inbounds [8 x i8], [8 x i8]* %15, i64 0, i64 0
  %110 = call i32 @memcpy(i8* %108, i8* %109, i32 8)
  %111 = load i8*, i8** %12, align 8
  %112 = getelementptr inbounds i8, i8* %111, i64 8
  store i8* %112, i8** %12, align 8
  %113 = load i8*, i8** %13, align 8
  %114 = getelementptr inbounds i8, i8* %113, i64 8
  store i8* %114, i8** %13, align 8
  %115 = load i64, i64* %10, align 8
  %116 = sub i64 %115, 8
  store i64 %116, i64* %10, align 8
  br label %71

117:                                              ; preds = %71
  br label %118

118:                                              ; preds = %117, %69
  store i32 0, i32* %7, align 4
  br label %119

119:                                              ; preds = %118, %19
  %120 = load i32, i32* %7, align 4
  ret i32 %120
}

declare dso_local i32 @mbedtls_des3_crypt_ecb(i32*, i8*, i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

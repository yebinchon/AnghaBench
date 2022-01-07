; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_blowfish.c_mbedtls_blowfish_crypt_cbc.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_blowfish.c_mbedtls_blowfish_crypt_cbc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MBEDTLS_BLOWFISH_BLOCKSIZE = common dso_local global i32 0, align 4
@MBEDTLS_ERR_BLOWFISH_INVALID_INPUT_LENGTH = common dso_local global i32 0, align 4
@MBEDTLS_BLOWFISH_DECRYPT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_blowfish_crypt_cbc(i32* %0, i32 %1, i64 %2, i8* %3, i8* %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i32 %1, i32* %9, align 4
  store i64 %2, i64* %10, align 8
  store i8* %3, i8** %11, align 8
  store i8* %4, i8** %12, align 8
  store i8* %5, i8** %13, align 8
  %18 = load i32, i32* @MBEDTLS_BLOWFISH_BLOCKSIZE, align 4
  %19 = zext i32 %18 to i64
  %20 = load i32, i32* @MBEDTLS_BLOWFISH_BLOCKSIZE, align 4
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %15, align 8
  %23 = alloca i8, i64 %21, align 16
  store i64 %21, i64* %16, align 8
  %24 = load i64, i64* %10, align 8
  %25 = load i32, i32* @MBEDTLS_BLOWFISH_BLOCKSIZE, align 4
  %26 = sext i32 %25 to i64
  %27 = urem i64 %24, %26
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %6
  %30 = load i32, i32* @MBEDTLS_ERR_BLOWFISH_INVALID_INPUT_LENGTH, align 4
  store i32 %30, i32* %7, align 4
  store i32 1, i32* %17, align 4
  br label %146

31:                                               ; preds = %6
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* @MBEDTLS_BLOWFISH_DECRYPT, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %91

35:                                               ; preds = %31
  br label %36

36:                                               ; preds = %74, %35
  %37 = load i64, i64* %10, align 8
  %38 = icmp ugt i64 %37, 0
  br i1 %38, label %39, label %90

39:                                               ; preds = %36
  %40 = load i8*, i8** %12, align 8
  %41 = load i32, i32* @MBEDTLS_BLOWFISH_BLOCKSIZE, align 4
  %42 = call i32 @memcpy(i8* %23, i8* %40, i32 %41)
  %43 = load i32*, i32** %8, align 8
  %44 = load i32, i32* %9, align 4
  %45 = load i8*, i8** %12, align 8
  %46 = load i8*, i8** %13, align 8
  %47 = call i32 @mbedtls_blowfish_crypt_ecb(i32* %43, i32 %44, i8* %45, i8* %46)
  store i32 0, i32* %14, align 4
  br label %48

48:                                               ; preds = %71, %39
  %49 = load i32, i32* %14, align 4
  %50 = load i32, i32* @MBEDTLS_BLOWFISH_BLOCKSIZE, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %74

52:                                               ; preds = %48
  %53 = load i8*, i8** %13, align 8
  %54 = load i32, i32* %14, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i8, i8* %53, i64 %55
  %57 = load i8, i8* %56, align 1
  %58 = zext i8 %57 to i32
  %59 = load i8*, i8** %11, align 8
  %60 = load i32, i32* %14, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i8, i8* %59, i64 %61
  %63 = load i8, i8* %62, align 1
  %64 = zext i8 %63 to i32
  %65 = xor i32 %58, %64
  %66 = trunc i32 %65 to i8
  %67 = load i8*, i8** %13, align 8
  %68 = load i32, i32* %14, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i8, i8* %67, i64 %69
  store i8 %66, i8* %70, align 1
  br label %71

71:                                               ; preds = %52
  %72 = load i32, i32* %14, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %14, align 4
  br label %48

74:                                               ; preds = %48
  %75 = load i8*, i8** %11, align 8
  %76 = load i32, i32* @MBEDTLS_BLOWFISH_BLOCKSIZE, align 4
  %77 = call i32 @memcpy(i8* %75, i8* %23, i32 %76)
  %78 = load i32, i32* @MBEDTLS_BLOWFISH_BLOCKSIZE, align 4
  %79 = load i8*, i8** %12, align 8
  %80 = sext i32 %78 to i64
  %81 = getelementptr inbounds i8, i8* %79, i64 %80
  store i8* %81, i8** %12, align 8
  %82 = load i32, i32* @MBEDTLS_BLOWFISH_BLOCKSIZE, align 4
  %83 = load i8*, i8** %13, align 8
  %84 = sext i32 %82 to i64
  %85 = getelementptr inbounds i8, i8* %83, i64 %84
  store i8* %85, i8** %13, align 8
  %86 = load i32, i32* @MBEDTLS_BLOWFISH_BLOCKSIZE, align 4
  %87 = sext i32 %86 to i64
  %88 = load i64, i64* %10, align 8
  %89 = sub i64 %88, %87
  store i64 %89, i64* %10, align 8
  br label %36

90:                                               ; preds = %36
  br label %145

91:                                               ; preds = %31
  br label %92

92:                                               ; preds = %122, %91
  %93 = load i64, i64* %10, align 8
  %94 = icmp ugt i64 %93, 0
  br i1 %94, label %95, label %144

95:                                               ; preds = %92
  store i32 0, i32* %14, align 4
  br label %96

96:                                               ; preds = %119, %95
  %97 = load i32, i32* %14, align 4
  %98 = load i32, i32* @MBEDTLS_BLOWFISH_BLOCKSIZE, align 4
  %99 = icmp slt i32 %97, %98
  br i1 %99, label %100, label %122

100:                                              ; preds = %96
  %101 = load i8*, i8** %12, align 8
  %102 = load i32, i32* %14, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i8, i8* %101, i64 %103
  %105 = load i8, i8* %104, align 1
  %106 = zext i8 %105 to i32
  %107 = load i8*, i8** %11, align 8
  %108 = load i32, i32* %14, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i8, i8* %107, i64 %109
  %111 = load i8, i8* %110, align 1
  %112 = zext i8 %111 to i32
  %113 = xor i32 %106, %112
  %114 = trunc i32 %113 to i8
  %115 = load i8*, i8** %13, align 8
  %116 = load i32, i32* %14, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i8, i8* %115, i64 %117
  store i8 %114, i8* %118, align 1
  br label %119

119:                                              ; preds = %100
  %120 = load i32, i32* %14, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %14, align 4
  br label %96

122:                                              ; preds = %96
  %123 = load i32*, i32** %8, align 8
  %124 = load i32, i32* %9, align 4
  %125 = load i8*, i8** %13, align 8
  %126 = load i8*, i8** %13, align 8
  %127 = call i32 @mbedtls_blowfish_crypt_ecb(i32* %123, i32 %124, i8* %125, i8* %126)
  %128 = load i8*, i8** %11, align 8
  %129 = load i8*, i8** %13, align 8
  %130 = load i32, i32* @MBEDTLS_BLOWFISH_BLOCKSIZE, align 4
  %131 = call i32 @memcpy(i8* %128, i8* %129, i32 %130)
  %132 = load i32, i32* @MBEDTLS_BLOWFISH_BLOCKSIZE, align 4
  %133 = load i8*, i8** %12, align 8
  %134 = sext i32 %132 to i64
  %135 = getelementptr inbounds i8, i8* %133, i64 %134
  store i8* %135, i8** %12, align 8
  %136 = load i32, i32* @MBEDTLS_BLOWFISH_BLOCKSIZE, align 4
  %137 = load i8*, i8** %13, align 8
  %138 = sext i32 %136 to i64
  %139 = getelementptr inbounds i8, i8* %137, i64 %138
  store i8* %139, i8** %13, align 8
  %140 = load i32, i32* @MBEDTLS_BLOWFISH_BLOCKSIZE, align 4
  %141 = sext i32 %140 to i64
  %142 = load i64, i64* %10, align 8
  %143 = sub i64 %142, %141
  store i64 %143, i64* %10, align 8
  br label %92

144:                                              ; preds = %92
  br label %145

145:                                              ; preds = %144, %90
  store i32 0, i32* %7, align 4
  store i32 1, i32* %17, align 4
  br label %146

146:                                              ; preds = %145, %29
  %147 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %147)
  %148 = load i32, i32* %7, align 4
  ret i32 %148
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #2

declare dso_local i32 @mbedtls_blowfish_crypt_ecb(i32*, i32, i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_blowfish.c_mbedtls_blowfish_crypt_cfb64.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_blowfish.c_mbedtls_blowfish_crypt_cfb64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MBEDTLS_BLOWFISH_BLOCKSIZE = common dso_local global i64 0, align 8
@MBEDTLS_BLOWFISH_DECRYPT = common dso_local global i32 0, align 4
@MBEDTLS_BLOWFISH_ENCRYPT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_blowfish_crypt_cfb64(i32* %0, i32 %1, i64 %2, i64* %3, i8* %4, i8* %5, i8* %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  store i32* %0, i32** %8, align 8
  store i32 %1, i32* %9, align 4
  store i64 %2, i64* %10, align 8
  store i64* %3, i64** %11, align 8
  store i8* %4, i8** %12, align 8
  store i8* %5, i8** %13, align 8
  store i8* %6, i8** %14, align 8
  %17 = load i64, i64* @MBEDTLS_BLOWFISH_BLOCKSIZE, align 8
  %18 = load i64*, i64** %11, align 8
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %16, align 8
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* @MBEDTLS_BLOWFISH_DECRYPT, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %62

23:                                               ; preds = %7
  br label %24

24:                                               ; preds = %37, %23
  %25 = load i64, i64* %10, align 8
  %26 = add i64 %25, -1
  store i64 %26, i64* %10, align 8
  %27 = icmp ne i64 %25, 0
  br i1 %27, label %28, label %61

28:                                               ; preds = %24
  %29 = load i64, i64* %16, align 8
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %28
  %32 = load i32*, i32** %8, align 8
  %33 = load i32, i32* @MBEDTLS_BLOWFISH_ENCRYPT, align 4
  %34 = load i8*, i8** %12, align 8
  %35 = load i8*, i8** %12, align 8
  %36 = call i32 @mbedtls_blowfish_crypt_ecb(i32* %32, i32 %33, i8* %34, i8* %35)
  br label %37

37:                                               ; preds = %31, %28
  %38 = load i8*, i8** %13, align 8
  %39 = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %39, i8** %13, align 8
  %40 = load i8, i8* %38, align 1
  %41 = zext i8 %40 to i32
  store i32 %41, i32* %15, align 4
  %42 = load i32, i32* %15, align 4
  %43 = load i8*, i8** %12, align 8
  %44 = load i64, i64* %16, align 8
  %45 = getelementptr inbounds i8, i8* %43, i64 %44
  %46 = load i8, i8* %45, align 1
  %47 = zext i8 %46 to i32
  %48 = xor i32 %42, %47
  %49 = trunc i32 %48 to i8
  %50 = load i8*, i8** %14, align 8
  %51 = getelementptr inbounds i8, i8* %50, i32 1
  store i8* %51, i8** %14, align 8
  store i8 %49, i8* %50, align 1
  %52 = load i32, i32* %15, align 4
  %53 = trunc i32 %52 to i8
  %54 = load i8*, i8** %12, align 8
  %55 = load i64, i64* %16, align 8
  %56 = getelementptr inbounds i8, i8* %54, i64 %55
  store i8 %53, i8* %56, align 1
  %57 = load i64, i64* %16, align 8
  %58 = add i64 %57, 1
  %59 = load i64, i64* @MBEDTLS_BLOWFISH_BLOCKSIZE, align 8
  %60 = urem i64 %58, %59
  store i64 %60, i64* %16, align 8
  br label %24

61:                                               ; preds = %24
  br label %98

62:                                               ; preds = %7
  br label %63

63:                                               ; preds = %76, %62
  %64 = load i64, i64* %10, align 8
  %65 = add i64 %64, -1
  store i64 %65, i64* %10, align 8
  %66 = icmp ne i64 %64, 0
  br i1 %66, label %67, label %97

67:                                               ; preds = %63
  %68 = load i64, i64* %16, align 8
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %67
  %71 = load i32*, i32** %8, align 8
  %72 = load i32, i32* @MBEDTLS_BLOWFISH_ENCRYPT, align 4
  %73 = load i8*, i8** %12, align 8
  %74 = load i8*, i8** %12, align 8
  %75 = call i32 @mbedtls_blowfish_crypt_ecb(i32* %71, i32 %72, i8* %73, i8* %74)
  br label %76

76:                                               ; preds = %70, %67
  %77 = load i8*, i8** %12, align 8
  %78 = load i64, i64* %16, align 8
  %79 = getelementptr inbounds i8, i8* %77, i64 %78
  %80 = load i8, i8* %79, align 1
  %81 = zext i8 %80 to i32
  %82 = load i8*, i8** %13, align 8
  %83 = getelementptr inbounds i8, i8* %82, i32 1
  store i8* %83, i8** %13, align 8
  %84 = load i8, i8* %82, align 1
  %85 = zext i8 %84 to i32
  %86 = xor i32 %81, %85
  %87 = trunc i32 %86 to i8
  %88 = load i8*, i8** %14, align 8
  %89 = getelementptr inbounds i8, i8* %88, i32 1
  store i8* %89, i8** %14, align 8
  store i8 %87, i8* %88, align 1
  %90 = load i8*, i8** %12, align 8
  %91 = load i64, i64* %16, align 8
  %92 = getelementptr inbounds i8, i8* %90, i64 %91
  store i8 %87, i8* %92, align 1
  %93 = load i64, i64* %16, align 8
  %94 = add i64 %93, 1
  %95 = load i64, i64* @MBEDTLS_BLOWFISH_BLOCKSIZE, align 8
  %96 = urem i64 %94, %95
  store i64 %96, i64* %16, align 8
  br label %63

97:                                               ; preds = %63
  br label %98

98:                                               ; preds = %97, %61
  %99 = load i64, i64* %16, align 8
  %100 = load i64*, i64** %11, align 8
  store i64 %99, i64* %100, align 8
  ret i32 0
}

declare dso_local i32 @mbedtls_blowfish_crypt_ecb(i32*, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

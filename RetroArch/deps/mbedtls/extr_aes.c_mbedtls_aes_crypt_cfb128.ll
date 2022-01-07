; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_aes.c_mbedtls_aes_crypt_cfb128.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_aes.c_mbedtls_aes_crypt_cfb128.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MBEDTLS_AES_DECRYPT = common dso_local global i32 0, align 4
@MBEDTLS_AES_ENCRYPT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_aes_crypt_cfb128(i32* %0, i32 %1, i64 %2, i64* %3, i8* %4, i8* %5, i8* %6) #0 {
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
  %17 = load i64*, i64** %11, align 8
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %16, align 8
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* @MBEDTLS_AES_DECRYPT, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %60

22:                                               ; preds = %7
  br label %23

23:                                               ; preds = %36, %22
  %24 = load i64, i64* %10, align 8
  %25 = add i64 %24, -1
  store i64 %25, i64* %10, align 8
  %26 = icmp ne i64 %24, 0
  br i1 %26, label %27, label %59

27:                                               ; preds = %23
  %28 = load i64, i64* %16, align 8
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %27
  %31 = load i32*, i32** %8, align 8
  %32 = load i32, i32* @MBEDTLS_AES_ENCRYPT, align 4
  %33 = load i8*, i8** %12, align 8
  %34 = load i8*, i8** %12, align 8
  %35 = call i32 @mbedtls_aes_crypt_ecb(i32* %31, i32 %32, i8* %33, i8* %34)
  br label %36

36:                                               ; preds = %30, %27
  %37 = load i8*, i8** %13, align 8
  %38 = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %38, i8** %13, align 8
  %39 = load i8, i8* %37, align 1
  %40 = zext i8 %39 to i32
  store i32 %40, i32* %15, align 4
  %41 = load i32, i32* %15, align 4
  %42 = load i8*, i8** %12, align 8
  %43 = load i64, i64* %16, align 8
  %44 = getelementptr inbounds i8, i8* %42, i64 %43
  %45 = load i8, i8* %44, align 1
  %46 = zext i8 %45 to i32
  %47 = xor i32 %41, %46
  %48 = trunc i32 %47 to i8
  %49 = load i8*, i8** %14, align 8
  %50 = getelementptr inbounds i8, i8* %49, i32 1
  store i8* %50, i8** %14, align 8
  store i8 %48, i8* %49, align 1
  %51 = load i32, i32* %15, align 4
  %52 = trunc i32 %51 to i8
  %53 = load i8*, i8** %12, align 8
  %54 = load i64, i64* %16, align 8
  %55 = getelementptr inbounds i8, i8* %53, i64 %54
  store i8 %52, i8* %55, align 1
  %56 = load i64, i64* %16, align 8
  %57 = add i64 %56, 1
  %58 = and i64 %57, 15
  store i64 %58, i64* %16, align 8
  br label %23

59:                                               ; preds = %23
  br label %95

60:                                               ; preds = %7
  br label %61

61:                                               ; preds = %74, %60
  %62 = load i64, i64* %10, align 8
  %63 = add i64 %62, -1
  store i64 %63, i64* %10, align 8
  %64 = icmp ne i64 %62, 0
  br i1 %64, label %65, label %94

65:                                               ; preds = %61
  %66 = load i64, i64* %16, align 8
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %65
  %69 = load i32*, i32** %8, align 8
  %70 = load i32, i32* @MBEDTLS_AES_ENCRYPT, align 4
  %71 = load i8*, i8** %12, align 8
  %72 = load i8*, i8** %12, align 8
  %73 = call i32 @mbedtls_aes_crypt_ecb(i32* %69, i32 %70, i8* %71, i8* %72)
  br label %74

74:                                               ; preds = %68, %65
  %75 = load i8*, i8** %12, align 8
  %76 = load i64, i64* %16, align 8
  %77 = getelementptr inbounds i8, i8* %75, i64 %76
  %78 = load i8, i8* %77, align 1
  %79 = zext i8 %78 to i32
  %80 = load i8*, i8** %13, align 8
  %81 = getelementptr inbounds i8, i8* %80, i32 1
  store i8* %81, i8** %13, align 8
  %82 = load i8, i8* %80, align 1
  %83 = zext i8 %82 to i32
  %84 = xor i32 %79, %83
  %85 = trunc i32 %84 to i8
  %86 = load i8*, i8** %14, align 8
  %87 = getelementptr inbounds i8, i8* %86, i32 1
  store i8* %87, i8** %14, align 8
  store i8 %85, i8* %86, align 1
  %88 = load i8*, i8** %12, align 8
  %89 = load i64, i64* %16, align 8
  %90 = getelementptr inbounds i8, i8* %88, i64 %89
  store i8 %85, i8* %90, align 1
  %91 = load i64, i64* %16, align 8
  %92 = add i64 %91, 1
  %93 = and i64 %92, 15
  store i64 %93, i64* %16, align 8
  br label %61

94:                                               ; preds = %61
  br label %95

95:                                               ; preds = %94, %59
  %96 = load i64, i64* %16, align 8
  %97 = load i64*, i64** %11, align 8
  store i64 %96, i64* %97, align 8
  ret i32 0
}

declare dso_local i32 @mbedtls_aes_crypt_ecb(i32*, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_aes.c_mbedtls_aes_crypt_cfb8.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_aes.c_mbedtls_aes_crypt_cfb8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MBEDTLS_AES_ENCRYPT = common dso_local global i32 0, align 4
@MBEDTLS_AES_DECRYPT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_aes_crypt_cfb8(i32* %0, i32 %1, i64 %2, i8* %3, i8* %4, i8* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8, align 1
  %14 = alloca [17 x i8], align 16
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i64 %2, i64* %9, align 8
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  store i8* %5, i8** %12, align 8
  br label %15

15:                                               ; preds = %54, %6
  %16 = load i64, i64* %9, align 8
  %17 = add i64 %16, -1
  store i64 %17, i64* %9, align 8
  %18 = icmp ne i64 %16, 0
  br i1 %18, label %19, label %59

19:                                               ; preds = %15
  %20 = getelementptr inbounds [17 x i8], [17 x i8]* %14, i64 0, i64 0
  %21 = load i8*, i8** %10, align 8
  %22 = call i32 @memcpy(i8* %20, i8* %21, i32 16)
  %23 = load i32*, i32** %7, align 8
  %24 = load i32, i32* @MBEDTLS_AES_ENCRYPT, align 4
  %25 = load i8*, i8** %10, align 8
  %26 = load i8*, i8** %10, align 8
  %27 = call i32 @mbedtls_aes_crypt_ecb(i32* %23, i32 %24, i8* %25, i8* %26)
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* @MBEDTLS_AES_DECRYPT, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %19
  %32 = load i8*, i8** %11, align 8
  %33 = load i8, i8* %32, align 1
  %34 = getelementptr inbounds [17 x i8], [17 x i8]* %14, i64 0, i64 16
  store i8 %33, i8* %34, align 16
  br label %35

35:                                               ; preds = %31, %19
  %36 = load i8*, i8** %10, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 0
  %38 = load i8, i8* %37, align 1
  %39 = zext i8 %38 to i32
  %40 = load i8*, i8** %11, align 8
  %41 = getelementptr inbounds i8, i8* %40, i32 1
  store i8* %41, i8** %11, align 8
  %42 = load i8, i8* %40, align 1
  %43 = zext i8 %42 to i32
  %44 = xor i32 %39, %43
  %45 = trunc i32 %44 to i8
  %46 = load i8*, i8** %12, align 8
  %47 = getelementptr inbounds i8, i8* %46, i32 1
  store i8* %47, i8** %12, align 8
  store i8 %45, i8* %46, align 1
  store i8 %45, i8* %13, align 1
  %48 = load i32, i32* %8, align 4
  %49 = load i32, i32* @MBEDTLS_AES_ENCRYPT, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %35
  %52 = load i8, i8* %13, align 1
  %53 = getelementptr inbounds [17 x i8], [17 x i8]* %14, i64 0, i64 16
  store i8 %52, i8* %53, align 16
  br label %54

54:                                               ; preds = %51, %35
  %55 = load i8*, i8** %10, align 8
  %56 = getelementptr inbounds [17 x i8], [17 x i8]* %14, i64 0, i64 0
  %57 = getelementptr inbounds i8, i8* %56, i64 1
  %58 = call i32 @memcpy(i8* %55, i8* %57, i32 16)
  br label %15

59:                                               ; preds = %15
  ret i32 0
}

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @mbedtls_aes_crypt_ecb(i32*, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

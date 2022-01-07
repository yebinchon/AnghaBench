; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_pem.c_pem_aes_decrypt.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_pem.c_pem_aes_decrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MBEDTLS_AES_DECRYPT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i8*, i64, i8*, i64)* @pem_aes_decrypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pem_aes_decrypt(i8* %0, i32 %1, i8* %2, i64 %3, i8* %4, i64 %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca [32 x i8], align 16
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i8* %4, i8** %11, align 8
  store i64 %5, i64* %12, align 8
  %15 = call i32 @mbedtls_aes_init(i32* %13)
  %16 = getelementptr inbounds [32 x i8], [32 x i8]* %14, i64 0, i64 0
  %17 = load i32, i32* %8, align 4
  %18 = load i8*, i8** %7, align 8
  %19 = load i8*, i8** %11, align 8
  %20 = load i64, i64* %12, align 8
  %21 = call i32 @pem_pbkdf1(i8* %16, i32 %17, i8* %18, i8* %19, i64 %20)
  %22 = getelementptr inbounds [32 x i8], [32 x i8]* %14, i64 0, i64 0
  %23 = load i32, i32* %8, align 4
  %24 = mul i32 %23, 8
  %25 = call i32 @mbedtls_aes_setkey_dec(i32* %13, i8* %22, i32 %24)
  %26 = load i32, i32* @MBEDTLS_AES_DECRYPT, align 4
  %27 = load i64, i64* %10, align 8
  %28 = load i8*, i8** %7, align 8
  %29 = load i8*, i8** %9, align 8
  %30 = load i8*, i8** %9, align 8
  %31 = call i32 @mbedtls_aes_crypt_cbc(i32* %13, i32 %26, i64 %27, i8* %28, i8* %29, i8* %30)
  %32 = call i32 @mbedtls_aes_free(i32* %13)
  %33 = getelementptr inbounds [32 x i8], [32 x i8]* %14, i64 0, i64 0
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @mbedtls_zeroize(i8* %33, i32 %34)
  ret void
}

declare dso_local i32 @mbedtls_aes_init(i32*) #1

declare dso_local i32 @pem_pbkdf1(i8*, i32, i8*, i8*, i64) #1

declare dso_local i32 @mbedtls_aes_setkey_dec(i32*, i8*, i32) #1

declare dso_local i32 @mbedtls_aes_crypt_cbc(i32*, i32, i64, i8*, i8*, i8*) #1

declare dso_local i32 @mbedtls_aes_free(i32*) #1

declare dso_local i32 @mbedtls_zeroize(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

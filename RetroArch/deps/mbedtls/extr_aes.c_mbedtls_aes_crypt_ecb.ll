; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_aes.c_mbedtls_aes_crypt_ecb.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_aes.c_mbedtls_aes_crypt_ecb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MBEDTLS_AES_ENCRYPT = common dso_local global i32 0, align 4
@MBEDTLS_AESNI_AES = common dso_local global i32 0, align 4
@aes_padlock_ace = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_aes_crypt_ecb(i32* %0, i32 %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %10 = load i32, i32* %7, align 4
  %11 = load i32, i32* @MBEDTLS_AES_ENCRYPT, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %18

13:                                               ; preds = %4
  %14 = load i32*, i32** %6, align 8
  %15 = load i8*, i8** %8, align 8
  %16 = load i8*, i8** %9, align 8
  %17 = call i32 @mbedtls_internal_aes_encrypt(i32* %14, i8* %15, i8* %16)
  store i32 %17, i32* %5, align 4
  br label %23

18:                                               ; preds = %4
  %19 = load i32*, i32** %6, align 8
  %20 = load i8*, i8** %8, align 8
  %21 = load i8*, i8** %9, align 8
  %22 = call i32 @mbedtls_internal_aes_decrypt(i32* %19, i8* %20, i8* %21)
  store i32 %22, i32* %5, align 4
  br label %23

23:                                               ; preds = %18, %13
  %24 = load i32, i32* %5, align 4
  ret i32 %24
}

declare dso_local i32 @mbedtls_internal_aes_encrypt(i32*, i8*, i8*) #1

declare dso_local i32 @mbedtls_internal_aes_decrypt(i32*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

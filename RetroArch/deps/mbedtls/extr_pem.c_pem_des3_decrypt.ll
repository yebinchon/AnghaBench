; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_pem.c_pem_des3_decrypt.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_pem.c_pem_des3_decrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MBEDTLS_DES_DECRYPT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i64, i8*, i64)* @pem_des3_decrypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pem_des3_decrypt(i8* %0, i8* %1, i64 %2, i8* %3, i64 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca [24 x i8], align 16
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i8* %3, i8** %9, align 8
  store i64 %4, i64* %10, align 8
  %13 = call i32 @mbedtls_des3_init(i32* %11)
  %14 = getelementptr inbounds [24 x i8], [24 x i8]* %12, i64 0, i64 0
  %15 = load i8*, i8** %6, align 8
  %16 = load i8*, i8** %9, align 8
  %17 = load i64, i64* %10, align 8
  %18 = call i32 @pem_pbkdf1(i8* %14, i32 24, i8* %15, i8* %16, i64 %17)
  %19 = getelementptr inbounds [24 x i8], [24 x i8]* %12, i64 0, i64 0
  %20 = call i32 @mbedtls_des3_set3key_dec(i32* %11, i8* %19)
  %21 = load i32, i32* @MBEDTLS_DES_DECRYPT, align 4
  %22 = load i64, i64* %8, align 8
  %23 = load i8*, i8** %6, align 8
  %24 = load i8*, i8** %7, align 8
  %25 = load i8*, i8** %7, align 8
  %26 = call i32 @mbedtls_des3_crypt_cbc(i32* %11, i32 %21, i64 %22, i8* %23, i8* %24, i8* %25)
  %27 = call i32 @mbedtls_des3_free(i32* %11)
  %28 = getelementptr inbounds [24 x i8], [24 x i8]* %12, i64 0, i64 0
  %29 = call i32 @mbedtls_zeroize(i8* %28, i32 24)
  ret void
}

declare dso_local i32 @mbedtls_des3_init(i32*) #1

declare dso_local i32 @pem_pbkdf1(i8*, i32, i8*, i8*, i64) #1

declare dso_local i32 @mbedtls_des3_set3key_dec(i32*, i8*) #1

declare dso_local i32 @mbedtls_des3_crypt_cbc(i32*, i32, i64, i8*, i8*, i8*) #1

declare dso_local i32 @mbedtls_des3_free(i32*) #1

declare dso_local i32 @mbedtls_zeroize(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

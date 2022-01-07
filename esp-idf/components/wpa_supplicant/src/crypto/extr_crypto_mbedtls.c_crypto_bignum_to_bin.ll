; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/crypto/extr_crypto_mbedtls.c_crypto_bignum_to_bin.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/crypto/extr_crypto_mbedtls.c_crypto_bignum_to_bin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_bignum = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @crypto_bignum_to_bin(%struct.crypto_bignum* %0, i32* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.crypto_bignum*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.crypto_bignum* %0, %struct.crypto_bignum** %6, align 8
  store i32* %1, i32** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load i64, i64* %9, align 8
  %13 = load i64, i64* %8, align 8
  %14 = icmp ugt i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %54

16:                                               ; preds = %4
  %17 = load %struct.crypto_bignum*, %struct.crypto_bignum** %6, align 8
  %18 = bitcast %struct.crypto_bignum* %17 to i32*
  %19 = call i32 @mbedtls_mpi_size(i32* %18)
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %10, align 4
  %21 = sext i32 %20 to i64
  %22 = load i64, i64* %8, align 8
  %23 = icmp ugt i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %16
  store i32 -1, i32* %5, align 4
  br label %54

25:                                               ; preds = %16
  %26 = load i64, i64* %9, align 8
  %27 = load i32, i32* %10, align 4
  %28 = sext i32 %27 to i64
  %29 = icmp ugt i64 %26, %28
  br i1 %29, label %30, label %36

30:                                               ; preds = %25
  %31 = load i64, i64* %9, align 8
  %32 = load i32, i32* %10, align 4
  %33 = sext i32 %32 to i64
  %34 = sub i64 %31, %33
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %11, align 4
  br label %37

36:                                               ; preds = %25
  store i32 0, i32* %11, align 4
  br label %37

37:                                               ; preds = %36, %30
  %38 = load i32*, i32** %7, align 8
  %39 = load i32, i32* %11, align 4
  %40 = call i32 @os_memset(i32* %38, i32 0, i32 %39)
  %41 = load %struct.crypto_bignum*, %struct.crypto_bignum** %6, align 8
  %42 = bitcast %struct.crypto_bignum* %41 to i32*
  %43 = load i32*, i32** %7, align 8
  %44 = load i32, i32* %11, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load %struct.crypto_bignum*, %struct.crypto_bignum** %6, align 8
  %48 = bitcast %struct.crypto_bignum* %47 to i32*
  %49 = call i32 @mbedtls_mpi_size(i32* %48)
  %50 = call i32 @mbedtls_mpi_write_binary(i32* %42, i32* %46, i32 %49)
  %51 = load i32, i32* %10, align 4
  %52 = load i32, i32* %11, align 4
  %53 = add nsw i32 %51, %52
  store i32 %53, i32* %5, align 4
  br label %54

54:                                               ; preds = %37, %24, %15
  %55 = load i32, i32* %5, align 4
  ret i32 %55
}

declare dso_local i32 @mbedtls_mpi_size(i32*) #1

declare dso_local i32 @os_memset(i32*, i32, i32) #1

declare dso_local i32 @mbedtls_mpi_write_binary(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

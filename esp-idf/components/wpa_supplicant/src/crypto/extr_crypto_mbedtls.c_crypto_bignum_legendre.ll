; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/crypto/extr_crypto_mbedtls.c_crypto_bignum_legendre.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/crypto/extr_crypto_mbedtls.c_crypto_bignum_legendre.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_bignum = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @crypto_bignum_legendre(%struct.crypto_bignum* %0, %struct.crypto_bignum* %1) #0 {
  %3 = alloca %struct.crypto_bignum*, align 8
  %4 = alloca %struct.crypto_bignum*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.crypto_bignum* %0, %struct.crypto_bignum** %3, align 8
  store %struct.crypto_bignum* %1, %struct.crypto_bignum** %4, align 8
  store i32 -2, i32* %7, align 4
  %9 = call i32 @mbedtls_mpi_init(i32* %5)
  %10 = call i32 @mbedtls_mpi_init(i32* %6)
  %11 = load %struct.crypto_bignum*, %struct.crypto_bignum** %4, align 8
  %12 = bitcast %struct.crypto_bignum* %11 to i32*
  %13 = call i32 @mbedtls_mpi_sub_int(i32* %5, i32* %12, i32 1)
  %14 = call i32 @MBEDTLS_MPI_CHK(i32 %13)
  %15 = call i32 @mbedtls_mpi_shift_r(i32* %5, i32 1)
  %16 = call i32 @MBEDTLS_MPI_CHK(i32 %15)
  %17 = load %struct.crypto_bignum*, %struct.crypto_bignum** %3, align 8
  %18 = bitcast %struct.crypto_bignum* %17 to i32*
  %19 = load %struct.crypto_bignum*, %struct.crypto_bignum** %4, align 8
  %20 = bitcast %struct.crypto_bignum* %19 to i32*
  %21 = call i32 @mbedtls_mpi_exp_mod(i32* %6, i32* %18, i32* %5, i32* %20, i32* null)
  %22 = call i32 @MBEDTLS_MPI_CHK(i32 %21)
  %23 = call i64 @mbedtls_mpi_cmp_int(i32* %6, i32 1)
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %2
  store i32 1, i32* %7, align 4
  br label %37

26:                                               ; preds = %2
  %27 = call i64 @mbedtls_mpi_cmp_int(i32* %6, i32 0)
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %26
  %30 = load %struct.crypto_bignum*, %struct.crypto_bignum** %4, align 8
  %31 = bitcast %struct.crypto_bignum* %30 to i32*
  %32 = call i64 @mbedtls_mpi_cmp_mpi(i32* %6, i32* %31)
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %29, %26
  store i32 0, i32* %7, align 4
  br label %36

35:                                               ; preds = %29
  store i32 -1, i32* %7, align 4
  br label %36

36:                                               ; preds = %35, %34
  br label %37

37:                                               ; preds = %36, %25
  br label %38

38:                                               ; preds = %37
  %39 = call i32 @mbedtls_mpi_free(i32* %6)
  %40 = call i32 @mbedtls_mpi_free(i32* %5)
  %41 = load i32, i32* %7, align 4
  ret i32 %41
}

declare dso_local i32 @mbedtls_mpi_init(i32*) #1

declare dso_local i32 @MBEDTLS_MPI_CHK(i32) #1

declare dso_local i32 @mbedtls_mpi_sub_int(i32*, i32*, i32) #1

declare dso_local i32 @mbedtls_mpi_shift_r(i32*, i32) #1

declare dso_local i32 @mbedtls_mpi_exp_mod(i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i64 @mbedtls_mpi_cmp_int(i32*, i32) #1

declare dso_local i64 @mbedtls_mpi_cmp_mpi(i32*, i32*) #1

declare dso_local i32 @mbedtls_mpi_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

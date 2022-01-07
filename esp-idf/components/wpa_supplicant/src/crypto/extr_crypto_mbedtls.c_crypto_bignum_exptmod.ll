; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/crypto/extr_crypto_mbedtls.c_crypto_bignum_exptmod.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/crypto/extr_crypto_mbedtls.c_crypto_bignum_exptmod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_bignum = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @crypto_bignum_exptmod(%struct.crypto_bignum* %0, %struct.crypto_bignum* %1, %struct.crypto_bignum* %2, %struct.crypto_bignum* %3) #0 {
  %5 = alloca %struct.crypto_bignum*, align 8
  %6 = alloca %struct.crypto_bignum*, align 8
  %7 = alloca %struct.crypto_bignum*, align 8
  %8 = alloca %struct.crypto_bignum*, align 8
  store %struct.crypto_bignum* %0, %struct.crypto_bignum** %5, align 8
  store %struct.crypto_bignum* %1, %struct.crypto_bignum** %6, align 8
  store %struct.crypto_bignum* %2, %struct.crypto_bignum** %7, align 8
  store %struct.crypto_bignum* %3, %struct.crypto_bignum** %8, align 8
  %9 = load %struct.crypto_bignum*, %struct.crypto_bignum** %8, align 8
  %10 = bitcast %struct.crypto_bignum* %9 to i32*
  %11 = load %struct.crypto_bignum*, %struct.crypto_bignum** %5, align 8
  %12 = bitcast %struct.crypto_bignum* %11 to i32*
  %13 = load %struct.crypto_bignum*, %struct.crypto_bignum** %6, align 8
  %14 = bitcast %struct.crypto_bignum* %13 to i32*
  %15 = load %struct.crypto_bignum*, %struct.crypto_bignum** %7, align 8
  %16 = bitcast %struct.crypto_bignum* %15 to i32*
  %17 = call i64 @mbedtls_mpi_exp_mod(i32* %10, i32* %12, i32* %14, i32* %16, i32* null)
  %18 = icmp ne i64 %17, 0
  %19 = zext i1 %18 to i64
  %20 = select i1 %18, i32 -1, i32 0
  ret i32 %20
}

declare dso_local i64 @mbedtls_mpi_exp_mod(i32*, i32*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

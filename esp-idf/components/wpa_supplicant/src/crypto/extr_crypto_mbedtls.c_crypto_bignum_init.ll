; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/crypto/extr_crypto_mbedtls.c_crypto_bignum_init.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/crypto/extr_crypto_mbedtls.c_crypto_bignum_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_bignum = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.crypto_bignum* @crypto_bignum_init() #0 {
  %1 = alloca %struct.crypto_bignum*, align 8
  %2 = alloca i32*, align 8
  %3 = call i32* @os_zalloc(i32 4)
  store i32* %3, i32** %2, align 8
  %4 = load i32*, i32** %2, align 8
  %5 = icmp eq i32* %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %0
  store %struct.crypto_bignum* null, %struct.crypto_bignum** %1, align 8
  br label %12

7:                                                ; preds = %0
  %8 = load i32*, i32** %2, align 8
  %9 = call i32 @mbedtls_mpi_init(i32* %8)
  %10 = load i32*, i32** %2, align 8
  %11 = bitcast i32* %10 to %struct.crypto_bignum*
  store %struct.crypto_bignum* %11, %struct.crypto_bignum** %1, align 8
  br label %12

12:                                               ; preds = %7, %6
  %13 = load %struct.crypto_bignum*, %struct.crypto_bignum** %1, align 8
  ret %struct.crypto_bignum* %13
}

declare dso_local i32* @os_zalloc(i32) #1

declare dso_local i32 @mbedtls_mpi_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

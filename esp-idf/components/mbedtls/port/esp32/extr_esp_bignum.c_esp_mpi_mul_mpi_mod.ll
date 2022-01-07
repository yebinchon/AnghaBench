; ModuleID = '/home/carl/AnghaBench/esp-idf/components/mbedtls/port/esp32/extr_esp_bignum.c_esp_mpi_mul_mpi_mod.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/mbedtls/port/esp32/extr_esp_bignum.c_esp_mpi_mul_mpi_mod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RSA_MEM_M_BLOCK_BASE = common dso_local global i32 0, align 4
@RSA_MEM_X_BLOCK_BASE = common dso_local global i32 0, align 4
@RSA_MEM_RB_BLOCK_BASE = common dso_local global i32 0, align 4
@RSA_M_DASH_REG = common dso_local global i32 0, align 4
@RSA_MULT_MODE_REG = common dso_local global i32 0, align 4
@RSA_MULT_START_REG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @esp_mpi_mul_mpi_mod(i32* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %21 = load i32*, i32** %6, align 8
  %22 = call i64 @mbedtls_mpi_bitlen(i32* %21)
  store i64 %22, i64* %10, align 8
  %23 = load i32*, i32** %7, align 8
  %24 = call i64 @mbedtls_mpi_bitlen(i32* %23)
  store i64 %24, i64* %11, align 8
  %25 = load i32*, i32** %8, align 8
  %26 = call i64 @mbedtls_mpi_bitlen(i32* %25)
  store i64 %26, i64* %12, align 8
  %27 = load i64, i64* %12, align 8
  %28 = load i64, i64* %10, align 8
  %29 = load i64, i64* %11, align 8
  %30 = add i64 %28, %29
  %31 = call i64 @MIN(i64 %27, i64 %30)
  store i64 %31, i64* %13, align 8
  %32 = load i64, i64* %10, align 8
  %33 = call i64 @bits_to_words(i64 %32)
  store i64 %33, i64* %14, align 8
  %34 = load i64, i64* %11, align 8
  %35 = call i64 @bits_to_words(i64 %34)
  store i64 %35, i64* %15, align 8
  %36 = load i64, i64* %12, align 8
  %37 = call i64 @bits_to_words(i64 %36)
  store i64 %37, i64* %16, align 8
  %38 = load i64, i64* %13, align 8
  %39 = call i64 @bits_to_words(i64 %38)
  store i64 %39, i64* %17, align 8
  %40 = load i64, i64* %14, align 8
  %41 = load i64, i64* %15, align 8
  %42 = load i64, i64* %16, align 8
  %43 = call i64 @MAX(i64 %41, i64 %42)
  %44 = call i64 @MAX(i64 %40, i64 %43)
  %45 = call i64 @hardware_words(i64 %44)
  store i64 %45, i64* %18, align 8
  %46 = call i32 @mbedtls_mpi_init(i32* %19)
  %47 = load i32*, i32** %8, align 8
  %48 = load i64, i64* %18, align 8
  %49 = call i32 @calculate_rinv(i32* %19, i32* %47, i64 %48)
  %50 = call i32 @MBEDTLS_MPI_CHK(i32 %49)
  %51 = load i32*, i32** %8, align 8
  %52 = call i64 @modular_inverse(i32* %51)
  store i64 %52, i64* %20, align 8
  %53 = call i32 (...) @esp_mpi_acquire_hardware()
  %54 = load i32, i32* @RSA_MEM_M_BLOCK_BASE, align 4
  %55 = load i32*, i32** %8, align 8
  %56 = load i64, i64* %18, align 8
  %57 = call i32 @mpi_to_mem_block(i32 %54, i32* %55, i64 %56)
  %58 = load i32, i32* @RSA_MEM_X_BLOCK_BASE, align 4
  %59 = load i32*, i32** %6, align 8
  %60 = load i64, i64* %18, align 8
  %61 = call i32 @mpi_to_mem_block(i32 %58, i32* %59, i64 %60)
  %62 = load i32, i32* @RSA_MEM_RB_BLOCK_BASE, align 4
  %63 = load i64, i64* %18, align 8
  %64 = call i32 @mpi_to_mem_block(i32 %62, i32* %19, i64 %63)
  %65 = load i32, i32* @RSA_M_DASH_REG, align 4
  %66 = load i64, i64* %20, align 8
  %67 = call i32 @DPORT_REG_WRITE(i32 %65, i64 %66)
  %68 = load i32, i32* @RSA_MULT_MODE_REG, align 4
  %69 = load i64, i64* %18, align 8
  %70 = udiv i64 %69, 16
  %71 = sub i64 %70, 1
  %72 = call i32 @DPORT_REG_WRITE(i32 %68, i64 %71)
  %73 = load i32, i32* @RSA_MULT_START_REG, align 4
  %74 = call i32 @start_op(i32 %73)
  %75 = load i32, i32* @RSA_MULT_START_REG, align 4
  %76 = call i32 @wait_op_complete(i32 %75)
  %77 = load i32*, i32** %5, align 8
  %78 = load i32*, i32** %6, align 8
  %79 = load i32*, i32** %7, align 8
  %80 = load i64, i64* %18, align 8
  %81 = load i64, i64* %17, align 8
  %82 = call i32 @modular_multiply_finish(i32* %77, i32* %78, i32* %79, i64 %80, i64 %81)
  store i32 %82, i32* %9, align 4
  %83 = call i32 (...) @esp_mpi_release_hardware()
  br label %84

84:                                               ; preds = %4
  %85 = call i32 @mbedtls_mpi_free(i32* %19)
  %86 = load i32, i32* %9, align 4
  ret i32 %86
}

declare dso_local i64 @mbedtls_mpi_bitlen(i32*) #1

declare dso_local i64 @MIN(i64, i64) #1

declare dso_local i64 @bits_to_words(i64) #1

declare dso_local i64 @hardware_words(i64) #1

declare dso_local i64 @MAX(i64, i64) #1

declare dso_local i32 @mbedtls_mpi_init(i32*) #1

declare dso_local i32 @MBEDTLS_MPI_CHK(i32) #1

declare dso_local i32 @calculate_rinv(i32*, i32*, i64) #1

declare dso_local i64 @modular_inverse(i32*) #1

declare dso_local i32 @esp_mpi_acquire_hardware(...) #1

declare dso_local i32 @mpi_to_mem_block(i32, i32*, i64) #1

declare dso_local i32 @DPORT_REG_WRITE(i32, i64) #1

declare dso_local i32 @start_op(i32) #1

declare dso_local i32 @wait_op_complete(i32) #1

declare dso_local i32 @modular_multiply_finish(i32*, i32*, i32*, i64, i64) #1

declare dso_local i32 @esp_mpi_release_hardware(...) #1

declare dso_local i32 @mbedtls_mpi_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

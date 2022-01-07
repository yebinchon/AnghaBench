; ModuleID = '/home/carl/AnghaBench/esp-idf/components/mbedtls/port/esp32s2beta/extr_esp_bignum.c_esp_mpi_mul_mpi_mod.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/mbedtls/port/esp32s2beta/extr_esp_bignum.c_esp_mpi_mul_mpi_mod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MBEDTLS_ERR_MPI_NOT_ACCEPTABLE = common dso_local global i32 0, align 4
@RSA_LENGTH_REG = common dso_local global i32 0, align 4
@RSA_M_DASH_REG = common dso_local global i32 0, align 4
@RSA_MEM_M_BLOCK_BASE = common dso_local global i32 0, align 4
@RSA_MEM_X_BLOCK_BASE = common dso_local global i32 0, align 4
@RSA_MEM_Y_BLOCK_BASE = common dso_local global i32 0, align 4
@RSA_MEM_RB_BLOCK_BASE = common dso_local global i32 0, align 4
@RSA_MOD_MULT_START_REG = common dso_local global i32 0, align 4
@RSA_MEM_Z_BLOCK_BASE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @esp_mpi_mul_mpi_mod(i32* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %15 = load i32*, i32** %9, align 8
  %16 = call i64 @mpi_words(i32* %15)
  store i64 %16, i64* %11, align 8
  %17 = load i64, i64* %11, align 8
  %18 = load i32*, i32** %7, align 8
  %19 = call i64 @mpi_words(i32* %18)
  %20 = call i64 @MAX(i64 %17, i64 %19)
  %21 = load i32*, i32** %8, align 8
  %22 = call i64 @mpi_words(i32* %21)
  %23 = call i64 @MAX(i64 %20, i64 %22)
  store i64 %23, i64* %14, align 8
  %24 = load i64, i64* %14, align 8
  %25 = mul i64 %24, 32
  %26 = icmp ugt i64 %25, 4096
  br i1 %26, label %27, label %29

27:                                               ; preds = %4
  %28 = load i32, i32* @MBEDTLS_ERR_MPI_NOT_ACCEPTABLE, align 4
  store i32 %28, i32* %5, align 4
  br label %72

29:                                               ; preds = %4
  %30 = call i32 @mbedtls_mpi_init(i32* %12)
  %31 = load i32*, i32** %9, align 8
  %32 = load i64, i64* %11, align 8
  %33 = call i32 @calculate_rinv(i32* %12, i32* %31, i64 %32)
  %34 = call i32 @MBEDTLS_MPI_CHK(i32 %33)
  %35 = load i32*, i32** %9, align 8
  %36 = call i64 @modular_inverse(i32* %35)
  store i64 %36, i64* %13, align 8
  %37 = call i32 (...) @esp_mpi_acquire_hardware()
  %38 = load i32, i32* @RSA_LENGTH_REG, align 4
  %39 = load i64, i64* %14, align 8
  %40 = sub i64 %39, 1
  %41 = call i32 @DPORT_REG_WRITE(i32 %38, i64 %40)
  %42 = load i32, i32* @RSA_M_DASH_REG, align 4
  %43 = load i64, i64* %13, align 8
  %44 = call i32 @DPORT_REG_WRITE(i32 %42, i64 %43)
  %45 = load i32, i32* @RSA_MEM_M_BLOCK_BASE, align 4
  %46 = load i32*, i32** %9, align 8
  %47 = load i64, i64* %14, align 8
  %48 = call i32 @mpi_to_mem_block(i32 %45, i32* %46, i64 %47)
  %49 = load i32, i32* @RSA_MEM_X_BLOCK_BASE, align 4
  %50 = load i32*, i32** %7, align 8
  %51 = load i64, i64* %14, align 8
  %52 = call i32 @mpi_to_mem_block(i32 %49, i32* %50, i64 %51)
  %53 = load i32, i32* @RSA_MEM_Y_BLOCK_BASE, align 4
  %54 = load i32*, i32** %8, align 8
  %55 = load i64, i64* %14, align 8
  %56 = call i32 @mpi_to_mem_block(i32 %53, i32* %54, i64 %55)
  %57 = load i32, i32* @RSA_MEM_RB_BLOCK_BASE, align 4
  %58 = load i64, i64* %14, align 8
  %59 = call i32 @mpi_to_mem_block(i32 %57, i32* %12, i64 %58)
  %60 = load i32, i32* @RSA_MOD_MULT_START_REG, align 4
  %61 = call i32 @start_op(i32 %60)
  %62 = load i32, i32* @RSA_MOD_MULT_START_REG, align 4
  %63 = call i32 @wait_op_complete(i32 %62)
  %64 = load i32*, i32** %6, align 8
  %65 = load i32, i32* @RSA_MEM_Z_BLOCK_BASE, align 4
  %66 = load i64, i64* %11, align 8
  %67 = call i32 @mem_block_to_mpi(i32* %64, i32 %65, i64 %66)
  %68 = call i32 (...) @esp_mpi_release_hardware()
  br label %69

69:                                               ; preds = %29
  %70 = call i32 @mbedtls_mpi_free(i32* %12)
  %71 = load i32, i32* %10, align 4
  store i32 %71, i32* %5, align 4
  br label %72

72:                                               ; preds = %69, %27
  %73 = load i32, i32* %5, align 4
  ret i32 %73
}

declare dso_local i64 @mpi_words(i32*) #1

declare dso_local i64 @MAX(i64, i64) #1

declare dso_local i32 @mbedtls_mpi_init(i32*) #1

declare dso_local i32 @MBEDTLS_MPI_CHK(i32) #1

declare dso_local i32 @calculate_rinv(i32*, i32*, i64) #1

declare dso_local i64 @modular_inverse(i32*) #1

declare dso_local i32 @esp_mpi_acquire_hardware(...) #1

declare dso_local i32 @DPORT_REG_WRITE(i32, i64) #1

declare dso_local i32 @mpi_to_mem_block(i32, i32*, i64) #1

declare dso_local i32 @start_op(i32) #1

declare dso_local i32 @wait_op_complete(i32) #1

declare dso_local i32 @mem_block_to_mpi(i32*, i32, i64) #1

declare dso_local i32 @esp_mpi_release_hardware(...) #1

declare dso_local i32 @mbedtls_mpi_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

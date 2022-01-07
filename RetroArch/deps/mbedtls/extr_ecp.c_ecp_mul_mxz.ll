; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_ecp.c_ecp_mul_mxz.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_ecp.c_ecp_mul_mxz.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_14__*, i32*, %struct.TYPE_14__*, i32 (i8*, i8*, i64)*, i8*)* @ecp_mul_mxz to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecp_mul_mxz(i32* %0, %struct.TYPE_14__* %1, i32* %2, %struct.TYPE_14__* %3, i32 (i8*, i8*, i64)* %4, i8* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_14__*, align 8
  %11 = alloca i32 (i8*, i8*, i64)*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i8, align 1
  %16 = alloca %struct.TYPE_14__, align 4
  %17 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %8, align 8
  store i32* %2, i32** %9, align 8
  store %struct.TYPE_14__* %3, %struct.TYPE_14__** %10, align 8
  store i32 (i8*, i8*, i64)* %4, i32 (i8*, i8*, i64)** %11, align 8
  store i8* %5, i8** %12, align 8
  %18 = call i32 @mbedtls_ecp_point_init(%struct.TYPE_14__* %16)
  %19 = call i32 @mbedtls_mpi_init(i32* %17)
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %21 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %20, i32 0, i32 1
  %22 = call i32 @mbedtls_mpi_copy(i32* %17, i32* %21)
  %23 = call i32 @MBEDTLS_MPI_CHK(i32 %22)
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %25 = call i32 @mbedtls_ecp_copy(%struct.TYPE_14__* %16, %struct.TYPE_14__* %24)
  %26 = call i32 @MBEDTLS_MPI_CHK(i32 %25)
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i32 0, i32 1
  %29 = call i32 @mbedtls_mpi_lset(i32* %28, i32 1)
  %30 = call i32 @MBEDTLS_MPI_CHK(i32 %29)
  %31 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %31, i32 0, i32 0
  %33 = call i32 @mbedtls_mpi_lset(i32* %32, i32 0)
  %34 = call i32 @MBEDTLS_MPI_CHK(i32 %33)
  %35 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %35, i32 0, i32 2
  %37 = call i32 @mbedtls_mpi_free(i32* %36)
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @MOD_ADD(i32 %39)
  %41 = load i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)** %11, align 8
  %42 = icmp ne i32 (i8*, i8*, i64)* %41, null
  br i1 %42, label %43, label %49

43:                                               ; preds = %6
  %44 = load i32*, i32** %7, align 8
  %45 = load i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)** %11, align 8
  %46 = load i8*, i8** %12, align 8
  %47 = call i32 @ecp_randomize_mxz(i32* %44, %struct.TYPE_14__* %16, i32 (i8*, i8*, i64)* %45, i8* %46)
  %48 = call i32 @MBEDTLS_MPI_CHK(i32 %47)
  br label %49

49:                                               ; preds = %43, %6
  %50 = load i32*, i32** %9, align 8
  %51 = call i64 @mbedtls_mpi_bitlen(i32* %50)
  store i64 %51, i64* %14, align 8
  br label %52

52:                                               ; preds = %56, %49
  %53 = load i64, i64* %14, align 8
  %54 = add i64 %53, -1
  store i64 %54, i64* %14, align 8
  %55 = icmp ugt i64 %53, 0
  br i1 %55, label %56, label %89

56:                                               ; preds = %52
  %57 = load i32*, i32** %9, align 8
  %58 = load i64, i64* %14, align 8
  %59 = call zeroext i8 @mbedtls_mpi_get_bit(i32* %57, i64 %58)
  store i8 %59, i8* %15, align 1
  %60 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 1
  %63 = load i8, i8* %15, align 1
  %64 = call i32 @mbedtls_mpi_safe_cond_swap(i32* %61, i32* %62, i8 zeroext %63)
  %65 = call i32 @MBEDTLS_MPI_CHK(i32 %64)
  %66 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 0
  %69 = load i8, i8* %15, align 1
  %70 = call i32 @mbedtls_mpi_safe_cond_swap(i32* %67, i32* %68, i8 zeroext %69)
  %71 = call i32 @MBEDTLS_MPI_CHK(i32 %70)
  %72 = load i32*, i32** %7, align 8
  %73 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %74 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %75 = call i32 @ecp_double_add_mxz(i32* %72, %struct.TYPE_14__* %73, %struct.TYPE_14__* %16, %struct.TYPE_14__* %74, %struct.TYPE_14__* %16, i32* %17)
  %76 = call i32 @MBEDTLS_MPI_CHK(i32 %75)
  %77 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %78 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 1
  %80 = load i8, i8* %15, align 1
  %81 = call i32 @mbedtls_mpi_safe_cond_swap(i32* %78, i32* %79, i8 zeroext %80)
  %82 = call i32 @MBEDTLS_MPI_CHK(i32 %81)
  %83 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %84 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 0
  %86 = load i8, i8* %15, align 1
  %87 = call i32 @mbedtls_mpi_safe_cond_swap(i32* %84, i32* %85, i8 zeroext %86)
  %88 = call i32 @MBEDTLS_MPI_CHK(i32 %87)
  br label %52

89:                                               ; preds = %52
  %90 = load i32*, i32** %7, align 8
  %91 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %92 = call i32 @ecp_normalize_mxz(i32* %90, %struct.TYPE_14__* %91)
  %93 = call i32 @MBEDTLS_MPI_CHK(i32 %92)
  br label %94

94:                                               ; preds = %89
  %95 = call i32 @mbedtls_ecp_point_free(%struct.TYPE_14__* %16)
  %96 = call i32 @mbedtls_mpi_free(i32* %17)
  %97 = load i32, i32* %13, align 4
  ret i32 %97
}

declare dso_local i32 @mbedtls_ecp_point_init(%struct.TYPE_14__*) #1

declare dso_local i32 @mbedtls_mpi_init(i32*) #1

declare dso_local i32 @MBEDTLS_MPI_CHK(i32) #1

declare dso_local i32 @mbedtls_mpi_copy(i32*, i32*) #1

declare dso_local i32 @mbedtls_ecp_copy(%struct.TYPE_14__*, %struct.TYPE_14__*) #1

declare dso_local i32 @mbedtls_mpi_lset(i32*, i32) #1

declare dso_local i32 @mbedtls_mpi_free(i32*) #1

declare dso_local i32 @MOD_ADD(i32) #1

declare dso_local i32 @ecp_randomize_mxz(i32*, %struct.TYPE_14__*, i32 (i8*, i8*, i64)*, i8*) #1

declare dso_local i64 @mbedtls_mpi_bitlen(i32*) #1

declare dso_local zeroext i8 @mbedtls_mpi_get_bit(i32*, i64) #1

declare dso_local i32 @mbedtls_mpi_safe_cond_swap(i32*, i32*, i8 zeroext) #1

declare dso_local i32 @ecp_double_add_mxz(i32*, %struct.TYPE_14__*, %struct.TYPE_14__*, %struct.TYPE_14__*, %struct.TYPE_14__*, i32*) #1

declare dso_local i32 @ecp_normalize_mxz(i32*, %struct.TYPE_14__*) #1

declare dso_local i32 @mbedtls_ecp_point_free(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

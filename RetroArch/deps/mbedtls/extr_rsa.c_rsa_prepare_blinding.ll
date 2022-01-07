; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_rsa.c_rsa_prepare_blinding.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_rsa.c_rsa_prepare_blinding.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, i32, i32, %struct.TYPE_17__, %struct.TYPE_17__, i64 }
%struct.TYPE_17__ = type { i32* }

@MBEDTLS_ERR_RSA_RNG_FAILED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*, i32 (i8*, i8*, i64)*, i8*)* @rsa_prepare_blinding to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rsa_prepare_blinding(%struct.TYPE_16__* %0, i32 (i8*, i8*, i64)* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca i32 (i8*, i8*, i64)*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %5, align 8
  store i32 (i8*, i8*, i64)* %1, i32 (i8*, i8*, i64)** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 0, i32* %9, align 4
  %10 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %10, i32 0, i32 4
  %12 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %48

15:                                               ; preds = %3
  %16 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %16, i32 0, i32 3
  %18 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %18, i32 0, i32 3
  %20 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %20, i32 0, i32 3
  %22 = call i32 @mbedtls_mpi_mul_mpi(%struct.TYPE_17__* %17, %struct.TYPE_17__* %19, %struct.TYPE_17__* %21)
  %23 = call i32 @MBEDTLS_MPI_CHK(i32 %22)
  %24 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %24, i32 0, i32 3
  %26 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %26, i32 0, i32 3
  %28 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %28, i32 0, i32 1
  %30 = call i32 @mbedtls_mpi_mod_mpi(%struct.TYPE_17__* %25, %struct.TYPE_17__* %27, i32* %29)
  %31 = call i32 @MBEDTLS_MPI_CHK(i32 %30)
  %32 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %32, i32 0, i32 4
  %34 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %34, i32 0, i32 4
  %36 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %36, i32 0, i32 4
  %38 = call i32 @mbedtls_mpi_mul_mpi(%struct.TYPE_17__* %33, %struct.TYPE_17__* %35, %struct.TYPE_17__* %37)
  %39 = call i32 @MBEDTLS_MPI_CHK(i32 %38)
  %40 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %40, i32 0, i32 4
  %42 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %42, i32 0, i32 4
  %44 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %44, i32 0, i32 1
  %46 = call i32 @mbedtls_mpi_mod_mpi(%struct.TYPE_17__* %41, %struct.TYPE_17__* %43, i32* %45)
  %47 = call i32 @MBEDTLS_MPI_CHK(i32 %46)
  br label %100

48:                                               ; preds = %3
  br label %49

49:                                               ; preds = %74, %48
  %50 = load i32, i32* %9, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %9, align 4
  %52 = icmp sgt i32 %50, 10
  br i1 %52, label %53, label %55

53:                                               ; preds = %49
  %54 = load i32, i32* @MBEDTLS_ERR_RSA_RNG_FAILED, align 4
  store i32 %54, i32* %4, align 4
  br label %102

55:                                               ; preds = %49
  %56 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %56, i32 0, i32 4
  %58 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %58, i32 0, i32 5
  %60 = load i64, i64* %59, align 8
  %61 = sub nsw i64 %60, 1
  %62 = load i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)** %6, align 8
  %63 = load i8*, i8** %7, align 8
  %64 = call i32 @mbedtls_mpi_fill_random(%struct.TYPE_17__* %57, i64 %61, i32 (i8*, i8*, i64)* %62, i8* %63)
  %65 = call i32 @MBEDTLS_MPI_CHK(i32 %64)
  %66 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %66, i32 0, i32 3
  %68 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %68, i32 0, i32 4
  %70 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %70, i32 0, i32 1
  %72 = call i32 @mbedtls_mpi_gcd(%struct.TYPE_17__* %67, %struct.TYPE_17__* %69, i32* %71)
  %73 = call i32 @MBEDTLS_MPI_CHK(i32 %72)
  br label %74

74:                                               ; preds = %55
  %75 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %75, i32 0, i32 3
  %77 = call i64 @mbedtls_mpi_cmp_int(%struct.TYPE_17__* %76, i32 1)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %49, label %79

79:                                               ; preds = %74
  %80 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %80, i32 0, i32 3
  %82 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %82, i32 0, i32 4
  %84 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %84, i32 0, i32 1
  %86 = call i32 @mbedtls_mpi_inv_mod(%struct.TYPE_17__* %81, %struct.TYPE_17__* %83, i32* %85)
  %87 = call i32 @MBEDTLS_MPI_CHK(i32 %86)
  %88 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %88, i32 0, i32 3
  %90 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %90, i32 0, i32 3
  %92 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %92, i32 0, i32 2
  %94 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %94, i32 0, i32 1
  %96 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %96, i32 0, i32 0
  %98 = call i32 @mbedtls_mpi_exp_mod(%struct.TYPE_17__* %89, %struct.TYPE_17__* %91, i32* %93, i32* %95, i32* %97)
  %99 = call i32 @MBEDTLS_MPI_CHK(i32 %98)
  br label %100

100:                                              ; preds = %79, %15
  %101 = load i32, i32* %8, align 4
  store i32 %101, i32* %4, align 4
  br label %102

102:                                              ; preds = %100, %53
  %103 = load i32, i32* %4, align 4
  ret i32 %103
}

declare dso_local i32 @MBEDTLS_MPI_CHK(i32) #1

declare dso_local i32 @mbedtls_mpi_mul_mpi(%struct.TYPE_17__*, %struct.TYPE_17__*, %struct.TYPE_17__*) #1

declare dso_local i32 @mbedtls_mpi_mod_mpi(%struct.TYPE_17__*, %struct.TYPE_17__*, i32*) #1

declare dso_local i32 @mbedtls_mpi_fill_random(%struct.TYPE_17__*, i64, i32 (i8*, i8*, i64)*, i8*) #1

declare dso_local i32 @mbedtls_mpi_gcd(%struct.TYPE_17__*, %struct.TYPE_17__*, i32*) #1

declare dso_local i64 @mbedtls_mpi_cmp_int(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @mbedtls_mpi_inv_mod(%struct.TYPE_17__*, %struct.TYPE_17__*, i32*) #1

declare dso_local i32 @mbedtls_mpi_exp_mod(%struct.TYPE_17__*, %struct.TYPE_17__*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

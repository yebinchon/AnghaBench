; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_bignum.c_mpi_check_small_factors.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_bignum.c_mpi_check_small_factors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32* }

@MBEDTLS_ERR_MPI_NOT_ACCEPTABLE = common dso_local global i32 0, align 4
@small_prime = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*)* @mpi_check_small_factors to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpi_check_small_factors(%struct.TYPE_5__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store i32 0, i32* %4, align 4
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %9 = load i32*, i32** %8, align 8
  %10 = getelementptr inbounds i32, i32* %9, i64 0
  %11 = load i32, i32* %10, align 4
  %12 = and i32 %11, 1
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i32, i32* @MBEDTLS_ERR_MPI_NOT_ACCEPTABLE, align 4
  store i32 %15, i32* %2, align 4
  br label %51

16:                                               ; preds = %1
  store i64 0, i64* %5, align 8
  br label %17

17:                                               ; preds = %45, %16
  %18 = load i64*, i64** @small_prime, align 8
  %19 = load i64, i64* %5, align 8
  %20 = getelementptr inbounds i64, i64* %18, i64 %19
  %21 = load i64, i64* %20, align 8
  %22 = icmp sgt i64 %21, 0
  br i1 %22, label %23, label %48

23:                                               ; preds = %17
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %25 = load i64*, i64** @small_prime, align 8
  %26 = load i64, i64* %5, align 8
  %27 = getelementptr inbounds i64, i64* %25, i64 %26
  %28 = load i64, i64* %27, align 8
  %29 = call i64 @mbedtls_mpi_cmp_int(%struct.TYPE_5__* %24, i64 %28)
  %30 = icmp sle i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %23
  store i32 1, i32* %2, align 4
  br label %51

32:                                               ; preds = %23
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %34 = load i64*, i64** @small_prime, align 8
  %35 = load i64, i64* %5, align 8
  %36 = getelementptr inbounds i64, i64* %34, i64 %35
  %37 = load i64, i64* %36, align 8
  %38 = call i32 @mbedtls_mpi_mod_int(i64* %6, %struct.TYPE_5__* %33, i64 %37)
  %39 = call i32 @MBEDTLS_MPI_CHK(i32 %38)
  %40 = load i64, i64* %6, align 8
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %32
  %43 = load i32, i32* @MBEDTLS_ERR_MPI_NOT_ACCEPTABLE, align 4
  store i32 %43, i32* %2, align 4
  br label %51

44:                                               ; preds = %32
  br label %45

45:                                               ; preds = %44
  %46 = load i64, i64* %5, align 8
  %47 = add i64 %46, 1
  store i64 %47, i64* %5, align 8
  br label %17

48:                                               ; preds = %17
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %4, align 4
  store i32 %50, i32* %2, align 4
  br label %51

51:                                               ; preds = %49, %42, %31, %14
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local i64 @mbedtls_mpi_cmp_int(%struct.TYPE_5__*, i64) #1

declare dso_local i32 @MBEDTLS_MPI_CHK(i32) #1

declare dso_local i32 @mbedtls_mpi_mod_int(i64*, %struct.TYPE_5__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

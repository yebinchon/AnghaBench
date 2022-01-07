; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_ecp.c_ecp_randomize_mxz.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_ecp.c_ecp_randomize_mxz.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32, i32 }

@MBEDTLS_ERR_ECP_RANDOM_FAILED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, %struct.TYPE_8__*, i32 (i8*, i8*, i64)*, i8*)* @ecp_randomize_mxz to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecp_randomize_mxz(%struct.TYPE_9__* %0, %struct.TYPE_8__* %1, i32 (i8*, i8*, i64)* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i32 (i8*, i8*, i64)*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %6, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %7, align 8
  store i32 (i8*, i8*, i64)* %2, i32 (i8*, i8*, i64)** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32 0, i32* %13, align 4
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = add nsw i32 %16, 7
  %18 = sdiv i32 %17, 8
  %19 = sext i32 %18 to i64
  store i64 %19, i64* %12, align 8
  %20 = call i32 @mbedtls_mpi_init(i32* %11)
  br label %21

21:                                               ; preds = %42, %4
  %22 = load i64, i64* %12, align 8
  %23 = load i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)** %8, align 8
  %24 = load i8*, i8** %9, align 8
  %25 = call i32 @mbedtls_mpi_fill_random(i32* %11, i64 %22, i32 (i8*, i8*, i64)* %23, i8* %24)
  %26 = call i32 @MBEDTLS_MPI_CHK(i32 %25)
  br label %27

27:                                               ; preds = %32, %21
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 1
  %30 = call i64 @mbedtls_mpi_cmp_mpi(i32* %11, i32* %29)
  %31 = icmp sge i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = call i32 @mbedtls_mpi_shift_r(i32* %11, i32 1)
  %34 = call i32 @MBEDTLS_MPI_CHK(i32 %33)
  br label %27

35:                                               ; preds = %27
  %36 = load i32, i32* %13, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %13, align 4
  %38 = icmp sgt i32 %36, 10
  br i1 %38, label %39, label %41

39:                                               ; preds = %35
  %40 = load i32, i32* @MBEDTLS_ERR_ECP_RANDOM_FAILED, align 4
  store i32 %40, i32* %5, align 4
  br label %69

41:                                               ; preds = %35
  br label %42

42:                                               ; preds = %41
  %43 = call i64 @mbedtls_mpi_cmp_int(i32* %11, i32 1)
  %44 = icmp sle i64 %43, 0
  br i1 %44, label %21, label %45

45:                                               ; preds = %42
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 1
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 1
  %50 = call i32 @mbedtls_mpi_mul_mpi(i32* %47, i32* %49, i32* %11)
  %51 = call i32 @MBEDTLS_MPI_CHK(i32 %50)
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @MOD_MUL(i32 %54)
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  %60 = call i32 @mbedtls_mpi_mul_mpi(i32* %57, i32* %59, i32* %11)
  %61 = call i32 @MBEDTLS_MPI_CHK(i32 %60)
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @MOD_MUL(i32 %64)
  br label %66

66:                                               ; preds = %45
  %67 = call i32 @mbedtls_mpi_free(i32* %11)
  %68 = load i32, i32* %10, align 4
  store i32 %68, i32* %5, align 4
  br label %69

69:                                               ; preds = %66, %39
  %70 = load i32, i32* %5, align 4
  ret i32 %70
}

declare dso_local i32 @mbedtls_mpi_init(i32*) #1

declare dso_local i32 @MBEDTLS_MPI_CHK(i32) #1

declare dso_local i32 @mbedtls_mpi_fill_random(i32*, i64, i32 (i8*, i8*, i64)*, i8*) #1

declare dso_local i64 @mbedtls_mpi_cmp_mpi(i32*, i32*) #1

declare dso_local i32 @mbedtls_mpi_shift_r(i32*, i32) #1

declare dso_local i64 @mbedtls_mpi_cmp_int(i32*, i32) #1

declare dso_local i32 @mbedtls_mpi_mul_mpi(i32*, i32*, i32*) #1

declare dso_local i32 @MOD_MUL(i32) #1

declare dso_local i32 @mbedtls_mpi_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

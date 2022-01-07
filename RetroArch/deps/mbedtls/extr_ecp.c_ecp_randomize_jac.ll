; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_ecp.c_ecp_randomize_jac.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_ecp.c_ecp_randomize_jac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32, i32, i32 }

@MBEDTLS_ERR_ECP_RANDOM_FAILED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, %struct.TYPE_8__*, i32 (i8*, i8*, i64)*, i8*)* @ecp_randomize_jac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecp_randomize_jac(%struct.TYPE_9__* %0, %struct.TYPE_8__* %1, i32 (i8*, i8*, i64)* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i32 (i8*, i8*, i64)*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %6, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %7, align 8
  store i32 (i8*, i8*, i64)* %2, i32 (i8*, i8*, i64)** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32 0, i32* %14, align 4
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = add nsw i32 %17, 7
  %19 = sdiv i32 %18, 8
  %20 = sext i32 %19 to i64
  store i64 %20, i64* %13, align 8
  %21 = call i32 @mbedtls_mpi_init(i32* %11)
  %22 = call i32 @mbedtls_mpi_init(i32* %12)
  br label %23

23:                                               ; preds = %44, %4
  %24 = load i64, i64* %13, align 8
  %25 = load i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)** %8, align 8
  %26 = load i8*, i8** %9, align 8
  %27 = call i32 @mbedtls_mpi_fill_random(i32* %11, i64 %24, i32 (i8*, i8*, i64)* %25, i8* %26)
  %28 = call i32 @MBEDTLS_MPI_CHK(i32 %27)
  br label %29

29:                                               ; preds = %34, %23
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 1
  %32 = call i64 @mbedtls_mpi_cmp_mpi(i32* %11, i32* %31)
  %33 = icmp sge i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %29
  %35 = call i32 @mbedtls_mpi_shift_r(i32* %11, i32 1)
  %36 = call i32 @MBEDTLS_MPI_CHK(i32 %35)
  br label %29

37:                                               ; preds = %29
  %38 = load i32, i32* %14, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %14, align 4
  %40 = icmp sgt i32 %38, 10
  br i1 %40, label %41, label %43

41:                                               ; preds = %37
  %42 = load i32, i32* @MBEDTLS_ERR_ECP_RANDOM_FAILED, align 4
  store i32 %42, i32* %5, align 4
  br label %90

43:                                               ; preds = %37
  br label %44

44:                                               ; preds = %43
  %45 = call i64 @mbedtls_mpi_cmp_int(i32* %11, i32 1)
  %46 = icmp sle i64 %45, 0
  br i1 %46, label %23, label %47

47:                                               ; preds = %44
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 2
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 2
  %52 = call i32 @mbedtls_mpi_mul_mpi(i32* %49, i32* %51, i32* %11)
  %53 = call i32 @MBEDTLS_MPI_CHK(i32 %52)
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @MOD_MUL(i32 %56)
  %58 = call i32 @mbedtls_mpi_mul_mpi(i32* %12, i32* %11, i32* %11)
  %59 = call i32 @MBEDTLS_MPI_CHK(i32 %58)
  %60 = load i32, i32* %12, align 4
  %61 = call i32 @MOD_MUL(i32 %60)
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 1
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 1
  %66 = call i32 @mbedtls_mpi_mul_mpi(i32* %63, i32* %65, i32* %12)
  %67 = call i32 @MBEDTLS_MPI_CHK(i32 %66)
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @MOD_MUL(i32 %70)
  %72 = call i32 @mbedtls_mpi_mul_mpi(i32* %12, i32* %12, i32* %11)
  %73 = call i32 @MBEDTLS_MPI_CHK(i32 %72)
  %74 = load i32, i32* %12, align 4
  %75 = call i32 @MOD_MUL(i32 %74)
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 0
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 0
  %80 = call i32 @mbedtls_mpi_mul_mpi(i32* %77, i32* %79, i32* %12)
  %81 = call i32 @MBEDTLS_MPI_CHK(i32 %80)
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @MOD_MUL(i32 %84)
  br label %86

86:                                               ; preds = %47
  %87 = call i32 @mbedtls_mpi_free(i32* %11)
  %88 = call i32 @mbedtls_mpi_free(i32* %12)
  %89 = load i32, i32* %10, align 4
  store i32 %89, i32* %5, align 4
  br label %90

90:                                               ; preds = %86, %41
  %91 = load i32, i32* %5, align 4
  ret i32 %91
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

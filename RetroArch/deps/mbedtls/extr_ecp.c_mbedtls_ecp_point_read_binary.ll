; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_ecp.c_mbedtls_ecp_point_read_binary.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_ecp.c_mbedtls_ecp_point_read_binary.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32, i32 }

@MBEDTLS_ERR_ECP_BAD_INPUT_DATA = common dso_local global i32 0, align 4
@MBEDTLS_ERR_ECP_FEATURE_UNAVAILABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_ecp_point_read_binary(%struct.TYPE_7__* %0, %struct.TYPE_6__* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %6, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load i64, i64* %9, align 8
  %13 = icmp ult i64 %12, 1
  br i1 %13, label %14, label %16

14:                                               ; preds = %4
  %15 = load i32, i32* @MBEDTLS_ERR_ECP_BAD_INPUT_DATA, align 4
  store i32 %15, i32* %5, align 4
  br label %72

16:                                               ; preds = %4
  %17 = load i8*, i8** %8, align 8
  %18 = getelementptr inbounds i8, i8* %17, i64 0
  %19 = load i8, i8* %18, align 1
  %20 = zext i8 %19 to i32
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %16
  %23 = load i64, i64* %9, align 8
  %24 = icmp eq i64 %23, 1
  br i1 %24, label %25, label %28

25:                                               ; preds = %22
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %27 = call i32 @mbedtls_ecp_set_zero(%struct.TYPE_6__* %26)
  store i32 %27, i32* %5, align 4
  br label %72

28:                                               ; preds = %22
  %29 = load i32, i32* @MBEDTLS_ERR_ECP_BAD_INPUT_DATA, align 4
  store i32 %29, i32* %5, align 4
  br label %72

30:                                               ; preds = %16
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = call i64 @mbedtls_mpi_size(i32* %32)
  store i64 %33, i64* %11, align 8
  %34 = load i8*, i8** %8, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 0
  %36 = load i8, i8* %35, align 1
  %37 = zext i8 %36 to i32
  %38 = icmp ne i32 %37, 4
  br i1 %38, label %39, label %41

39:                                               ; preds = %30
  %40 = load i32, i32* @MBEDTLS_ERR_ECP_FEATURE_UNAVAILABLE, align 4
  store i32 %40, i32* %5, align 4
  br label %72

41:                                               ; preds = %30
  %42 = load i64, i64* %9, align 8
  %43 = load i64, i64* %11, align 8
  %44 = mul i64 2, %43
  %45 = add i64 %44, 1
  %46 = icmp ne i64 %42, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %41
  %48 = load i32, i32* @MBEDTLS_ERR_ECP_BAD_INPUT_DATA, align 4
  store i32 %48, i32* %5, align 4
  br label %72

49:                                               ; preds = %41
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 2
  %52 = load i8*, i8** %8, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 1
  %54 = load i64, i64* %11, align 8
  %55 = call i32 @mbedtls_mpi_read_binary(i32* %51, i8* %53, i64 %54)
  %56 = call i32 @MBEDTLS_MPI_CHK(i32 %55)
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 1
  %59 = load i8*, i8** %8, align 8
  %60 = getelementptr inbounds i8, i8* %59, i64 1
  %61 = load i64, i64* %11, align 8
  %62 = getelementptr inbounds i8, i8* %60, i64 %61
  %63 = load i64, i64* %11, align 8
  %64 = call i32 @mbedtls_mpi_read_binary(i32* %58, i8* %62, i64 %63)
  %65 = call i32 @MBEDTLS_MPI_CHK(i32 %64)
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = call i32 @mbedtls_mpi_lset(i32* %67, i32 1)
  %69 = call i32 @MBEDTLS_MPI_CHK(i32 %68)
  br label %70

70:                                               ; preds = %49
  %71 = load i32, i32* %10, align 4
  store i32 %71, i32* %5, align 4
  br label %72

72:                                               ; preds = %70, %47, %39, %28, %25, %14
  %73 = load i32, i32* %5, align 4
  ret i32 %73
}

declare dso_local i32 @mbedtls_ecp_set_zero(%struct.TYPE_6__*) #1

declare dso_local i64 @mbedtls_mpi_size(i32*) #1

declare dso_local i32 @MBEDTLS_MPI_CHK(i32) #1

declare dso_local i32 @mbedtls_mpi_read_binary(i32*, i8*, i64) #1

declare dso_local i32 @mbedtls_mpi_lset(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

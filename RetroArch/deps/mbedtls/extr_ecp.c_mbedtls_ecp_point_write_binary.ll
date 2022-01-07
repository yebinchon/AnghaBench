; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_ecp.c_mbedtls_ecp_point_write_binary.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_ecp.c_mbedtls_ecp_point_write_binary.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32, i32 }

@MBEDTLS_ECP_PF_UNCOMPRESSED = common dso_local global i32 0, align 4
@MBEDTLS_ECP_PF_COMPRESSED = common dso_local global i32 0, align 4
@MBEDTLS_ERR_ECP_BAD_INPUT_DATA = common dso_local global i32 0, align 4
@MBEDTLS_ERR_ECP_BUFFER_TOO_SMALL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_ecp_point_write_binary(%struct.TYPE_6__* %0, %struct.TYPE_5__* %1, i32 %2, i64* %3, i8* %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca %struct.TYPE_5__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %8, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %9, align 8
  store i32 %2, i32* %10, align 4
  store i64* %3, i64** %11, align 8
  store i8* %4, i8** %12, align 8
  store i64 %5, i64* %13, align 8
  store i32 0, i32* %14, align 4
  %16 = load i32, i32* %10, align 4
  %17 = load i32, i32* @MBEDTLS_ECP_PF_UNCOMPRESSED, align 4
  %18 = icmp ne i32 %16, %17
  br i1 %18, label %19, label %25

19:                                               ; preds = %6
  %20 = load i32, i32* %10, align 4
  %21 = load i32, i32* @MBEDTLS_ECP_PF_COMPRESSED, align 4
  %22 = icmp ne i32 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = load i32, i32* @MBEDTLS_ERR_ECP_BAD_INPUT_DATA, align 4
  store i32 %24, i32* %7, align 4
  br label %109

25:                                               ; preds = %19, %6
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 2
  %28 = call i64 @mbedtls_mpi_cmp_int(i32* %27, i32 0)
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %39

30:                                               ; preds = %25
  %31 = load i64, i64* %13, align 8
  %32 = icmp ult i64 %31, 1
  br i1 %32, label %33, label %35

33:                                               ; preds = %30
  %34 = load i32, i32* @MBEDTLS_ERR_ECP_BUFFER_TOO_SMALL, align 4
  store i32 %34, i32* %7, align 4
  br label %109

35:                                               ; preds = %30
  %36 = load i8*, i8** %12, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 0
  store i8 0, i8* %37, align 1
  %38 = load i64*, i64** %11, align 8
  store i64 1, i64* %38, align 8
  store i32 0, i32* %7, align 4
  br label %109

39:                                               ; preds = %25
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = call i64 @mbedtls_mpi_size(i32* %41)
  store i64 %42, i64* %15, align 8
  %43 = load i32, i32* %10, align 4
  %44 = load i32, i32* @MBEDTLS_ECP_PF_UNCOMPRESSED, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %76

46:                                               ; preds = %39
  %47 = load i64, i64* %15, align 8
  %48 = mul i64 2, %47
  %49 = add i64 %48, 1
  %50 = load i64*, i64** %11, align 8
  store i64 %49, i64* %50, align 8
  %51 = load i64, i64* %13, align 8
  %52 = load i64*, i64** %11, align 8
  %53 = load i64, i64* %52, align 8
  %54 = icmp ult i64 %51, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %46
  %56 = load i32, i32* @MBEDTLS_ERR_ECP_BUFFER_TOO_SMALL, align 4
  store i32 %56, i32* %7, align 4
  br label %109

57:                                               ; preds = %46
  %58 = load i8*, i8** %12, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 0
  store i8 4, i8* %59, align 1
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = load i8*, i8** %12, align 8
  %63 = getelementptr inbounds i8, i8* %62, i64 1
  %64 = load i64, i64* %15, align 8
  %65 = call i32 @mbedtls_mpi_write_binary(i32* %61, i8* %63, i64 %64)
  %66 = call i32 @MBEDTLS_MPI_CHK(i32 %65)
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 1
  %69 = load i8*, i8** %12, align 8
  %70 = getelementptr inbounds i8, i8* %69, i64 1
  %71 = load i64, i64* %15, align 8
  %72 = getelementptr inbounds i8, i8* %70, i64 %71
  %73 = load i64, i64* %15, align 8
  %74 = call i32 @mbedtls_mpi_write_binary(i32* %68, i8* %72, i64 %73)
  %75 = call i32 @MBEDTLS_MPI_CHK(i32 %74)
  br label %106

76:                                               ; preds = %39
  %77 = load i32, i32* %10, align 4
  %78 = load i32, i32* @MBEDTLS_ECP_PF_COMPRESSED, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %80, label %105

80:                                               ; preds = %76
  %81 = load i64, i64* %15, align 8
  %82 = add i64 %81, 1
  %83 = load i64*, i64** %11, align 8
  store i64 %82, i64* %83, align 8
  %84 = load i64, i64* %13, align 8
  %85 = load i64*, i64** %11, align 8
  %86 = load i64, i64* %85, align 8
  %87 = icmp ult i64 %84, %86
  br i1 %87, label %88, label %90

88:                                               ; preds = %80
  %89 = load i32, i32* @MBEDTLS_ERR_ECP_BUFFER_TOO_SMALL, align 4
  store i32 %89, i32* %7, align 4
  br label %109

90:                                               ; preds = %80
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 1
  %93 = call i32 @mbedtls_mpi_get_bit(i32* %92, i32 0)
  %94 = add nsw i32 2, %93
  %95 = trunc i32 %94 to i8
  %96 = load i8*, i8** %12, align 8
  %97 = getelementptr inbounds i8, i8* %96, i64 0
  store i8 %95, i8* %97, align 1
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 0
  %100 = load i8*, i8** %12, align 8
  %101 = getelementptr inbounds i8, i8* %100, i64 1
  %102 = load i64, i64* %15, align 8
  %103 = call i32 @mbedtls_mpi_write_binary(i32* %99, i8* %101, i64 %102)
  %104 = call i32 @MBEDTLS_MPI_CHK(i32 %103)
  br label %105

105:                                              ; preds = %90, %76
  br label %106

106:                                              ; preds = %105, %57
  br label %107

107:                                              ; preds = %106
  %108 = load i32, i32* %14, align 4
  store i32 %108, i32* %7, align 4
  br label %109

109:                                              ; preds = %107, %88, %55, %35, %33, %23
  %110 = load i32, i32* %7, align 4
  ret i32 %110
}

declare dso_local i64 @mbedtls_mpi_cmp_int(i32*, i32) #1

declare dso_local i64 @mbedtls_mpi_size(i32*) #1

declare dso_local i32 @MBEDTLS_MPI_CHK(i32) #1

declare dso_local i32 @mbedtls_mpi_write_binary(i32*, i8*, i64) #1

declare dso_local i32 @mbedtls_mpi_get_bit(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

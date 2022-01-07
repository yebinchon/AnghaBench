; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_dhm.c_mbedtls_dhm_calc_secret.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_dhm.c_mbedtls_dhm_calc_secret.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32, i32, i32, i32, i32, i32, i32 }

@MBEDTLS_ERR_DHM_BAD_INPUT_DATA = common dso_local global i32 0, align 4
@MBEDTLS_ERR_DHM_CALC_SECRET_FAILED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_dhm_calc_secret(%struct.TYPE_4__* %0, i8* %1, i64 %2, i64* %3, i32 (i8*, i8*, i64)* %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i32 (i8*, i8*, i64)*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %8, align 8
  store i8* %1, i8** %9, align 8
  store i64 %2, i64* %10, align 8
  store i64* %3, i64** %11, align 8
  store i32 (i8*, i8*, i64)* %4, i32 (i8*, i8*, i64)** %12, align 8
  store i8* %5, i8** %13, align 8
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %17 = icmp eq %struct.TYPE_4__* %16, null
  br i1 %17, label %24, label %18

18:                                               ; preds = %6
  %19 = load i64, i64* %10, align 8
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ult i64 %19, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %18, %6
  %25 = load i32, i32* @MBEDTLS_ERR_DHM_BAD_INPUT_DATA, align 4
  store i32 %25, i32* %7, align 4
  br label %111

26:                                               ; preds = %18
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 6
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 2
  %31 = call i32 @dhm_check_range(i32* %28, i32* %30)
  store i32 %31, i32* %14, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %26
  %34 = load i32, i32* %14, align 4
  store i32 %34, i32* %7, align 4
  br label %111

35:                                               ; preds = %26
  %36 = call i32 @mbedtls_mpi_init(i32* %15)
  %37 = load i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)** %12, align 8
  %38 = icmp ne i32 (i8*, i8*, i64)* %37, null
  br i1 %38, label %39, label %55

39:                                               ; preds = %35
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %41 = load i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)** %12, align 8
  %42 = load i8*, i8** %13, align 8
  %43 = call i32 @dhm_update_blinding(%struct.TYPE_4__* %40, i32 (i8*, i8*, i64)* %41, i8* %42)
  %44 = call i32 @MBEDTLS_MPI_CHK(i32 %43)
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 6
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 7
  %49 = call i32 @mbedtls_mpi_mul_mpi(i32* %15, i32* %46, i32* %48)
  %50 = call i32 @MBEDTLS_MPI_CHK(i32 %49)
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 2
  %53 = call i32 @mbedtls_mpi_mod_mpi(i32* %15, i32* %15, i32* %52)
  %54 = call i32 @MBEDTLS_MPI_CHK(i32 %53)
  br label %60

55:                                               ; preds = %35
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 6
  %58 = call i32 @mbedtls_mpi_copy(i32* %15, i32* %57)
  %59 = call i32 @MBEDTLS_MPI_CHK(i32 %58)
  br label %60

60:                                               ; preds = %55, %39
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 1
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 5
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 2
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 4
  %69 = call i32 @mbedtls_mpi_exp_mod(i32* %62, i32* %15, i32* %64, i32* %66, i32* %68)
  %70 = call i32 @MBEDTLS_MPI_CHK(i32 %69)
  %71 = load i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)** %12, align 8
  %72 = icmp ne i32 (i8*, i8*, i64)* %71, null
  br i1 %72, label %73, label %90

73:                                               ; preds = %60
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 1
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 1
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 3
  %80 = call i32 @mbedtls_mpi_mul_mpi(i32* %75, i32* %77, i32* %79)
  %81 = call i32 @MBEDTLS_MPI_CHK(i32 %80)
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 1
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 1
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 2
  %88 = call i32 @mbedtls_mpi_mod_mpi(i32* %83, i32* %85, i32* %87)
  %89 = call i32 @MBEDTLS_MPI_CHK(i32 %88)
  br label %90

90:                                               ; preds = %73, %60
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 1
  %93 = call i64 @mbedtls_mpi_size(i32* %92)
  %94 = load i64*, i64** %11, align 8
  store i64 %93, i64* %94, align 8
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 1
  %97 = load i8*, i8** %9, align 8
  %98 = load i64*, i64** %11, align 8
  %99 = load i64, i64* %98, align 8
  %100 = call i32 @mbedtls_mpi_write_binary(i32* %96, i8* %97, i64 %99)
  %101 = call i32 @MBEDTLS_MPI_CHK(i32 %100)
  br label %102

102:                                              ; preds = %90
  %103 = call i32 @mbedtls_mpi_free(i32* %15)
  %104 = load i32, i32* %14, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %110

106:                                              ; preds = %102
  %107 = load i32, i32* @MBEDTLS_ERR_DHM_CALC_SECRET_FAILED, align 4
  %108 = load i32, i32* %14, align 4
  %109 = add nsw i32 %107, %108
  store i32 %109, i32* %7, align 4
  br label %111

110:                                              ; preds = %102
  store i32 0, i32* %7, align 4
  br label %111

111:                                              ; preds = %110, %106, %33, %24
  %112 = load i32, i32* %7, align 4
  ret i32 %112
}

declare dso_local i32 @dhm_check_range(i32*, i32*) #1

declare dso_local i32 @mbedtls_mpi_init(i32*) #1

declare dso_local i32 @MBEDTLS_MPI_CHK(i32) #1

declare dso_local i32 @dhm_update_blinding(%struct.TYPE_4__*, i32 (i8*, i8*, i64)*, i8*) #1

declare dso_local i32 @mbedtls_mpi_mul_mpi(i32*, i32*, i32*) #1

declare dso_local i32 @mbedtls_mpi_mod_mpi(i32*, i32*, i32*) #1

declare dso_local i32 @mbedtls_mpi_copy(i32*, i32*) #1

declare dso_local i32 @mbedtls_mpi_exp_mod(i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i64 @mbedtls_mpi_size(i32*) #1

declare dso_local i32 @mbedtls_mpi_write_binary(i32*, i8*, i64) #1

declare dso_local i32 @mbedtls_mpi_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

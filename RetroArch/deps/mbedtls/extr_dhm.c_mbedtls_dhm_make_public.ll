; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_dhm.c_mbedtls_dhm_make_public.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_dhm.c_mbedtls_dhm_make_public.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32, i32, i32, i32, i32 }

@MBEDTLS_ERR_DHM_BAD_INPUT_DATA = common dso_local global i32 0, align 4
@MBEDTLS_ERR_DHM_MAKE_PUBLIC_FAILED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_dhm_make_public(%struct.TYPE_3__* %0, i32 %1, i8* %2, i64 %3, i32 (i8*, i8*, i64)* %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32 (i8*, i8*, i64)*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %8, align 8
  store i32 %1, i32* %9, align 4
  store i8* %2, i8** %10, align 8
  store i64 %3, i64* %11, align 8
  store i32 (i8*, i8*, i64)* %4, i32 (i8*, i8*, i64)** %12, align 8
  store i8* %5, i8** %13, align 8
  store i32 0, i32* %15, align 4
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %17 = icmp eq %struct.TYPE_3__* %16, null
  br i1 %17, label %27, label %18

18:                                               ; preds = %6
  %19 = load i64, i64* %11, align 8
  %20 = icmp ult i64 %19, 1
  br i1 %20, label %27, label %21

21:                                               ; preds = %18
  %22 = load i64, i64* %11, align 8
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ugt i64 %22, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %21, %18, %6
  %28 = load i32, i32* @MBEDTLS_ERR_DHM_BAD_INPUT_DATA, align 4
  store i32 %28, i32* %7, align 4
  br label %107

29:                                               ; preds = %21
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 2
  %32 = call i64 @mbedtls_mpi_cmp_int(i32* %31, i32 0)
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  %35 = load i32, i32* @MBEDTLS_ERR_DHM_BAD_INPUT_DATA, align 4
  store i32 %35, i32* %7, align 4
  br label %107

36:                                               ; preds = %29
  br label %37

37:                                               ; preds = %64, %36
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 4
  %40 = load i32, i32* %9, align 4
  %41 = load i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)** %12, align 8
  %42 = load i8*, i8** %13, align 8
  %43 = call i32 @mbedtls_mpi_fill_random(i32* %39, i32 %40, i32 (i8*, i8*, i64)* %41, i8* %42)
  %44 = call i32 @MBEDTLS_MPI_CHK(i32 %43)
  br label %45

45:                                               ; preds = %52, %37
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 4
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 2
  %50 = call i64 @mbedtls_mpi_cmp_mpi(i32* %47, i32* %49)
  %51 = icmp sge i64 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %45
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 4
  %55 = call i32 @mbedtls_mpi_shift_r(i32* %54, i32 1)
  %56 = call i32 @MBEDTLS_MPI_CHK(i32 %55)
  br label %45

57:                                               ; preds = %45
  %58 = load i32, i32* %15, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %15, align 4
  %60 = icmp sgt i32 %58, 10
  br i1 %60, label %61, label %63

61:                                               ; preds = %57
  %62 = load i32, i32* @MBEDTLS_ERR_DHM_MAKE_PUBLIC_FAILED, align 4
  store i32 %62, i32* %7, align 4
  br label %107

63:                                               ; preds = %57
  br label %64

64:                                               ; preds = %63
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 4
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 2
  %69 = call i32 @dhm_check_range(i32* %66, i32* %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %37, label %71

71:                                               ; preds = %64
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 1
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 5
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 4
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 2
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 3
  %82 = call i32 @mbedtls_mpi_exp_mod(i32* %73, i32* %75, i32* %77, i32* %79, i32* %81)
  %83 = call i32 @MBEDTLS_MPI_CHK(i32 %82)
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 1
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 2
  %88 = call i32 @dhm_check_range(i32* %85, i32* %87)
  store i32 %88, i32* %14, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %71
  %91 = load i32, i32* %14, align 4
  store i32 %91, i32* %7, align 4
  br label %107

92:                                               ; preds = %71
  %93 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 1
  %95 = load i8*, i8** %10, align 8
  %96 = load i64, i64* %11, align 8
  %97 = call i32 @mbedtls_mpi_write_binary(i32* %94, i8* %95, i64 %96)
  %98 = call i32 @MBEDTLS_MPI_CHK(i32 %97)
  br label %99

99:                                               ; preds = %92
  %100 = load i32, i32* %14, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %106

102:                                              ; preds = %99
  %103 = load i32, i32* @MBEDTLS_ERR_DHM_MAKE_PUBLIC_FAILED, align 4
  %104 = load i32, i32* %14, align 4
  %105 = add nsw i32 %103, %104
  store i32 %105, i32* %7, align 4
  br label %107

106:                                              ; preds = %99
  store i32 0, i32* %7, align 4
  br label %107

107:                                              ; preds = %106, %102, %90, %61, %34, %27
  %108 = load i32, i32* %7, align 4
  ret i32 %108
}

declare dso_local i64 @mbedtls_mpi_cmp_int(i32*, i32) #1

declare dso_local i32 @MBEDTLS_MPI_CHK(i32) #1

declare dso_local i32 @mbedtls_mpi_fill_random(i32*, i32, i32 (i8*, i8*, i64)*, i8*) #1

declare dso_local i64 @mbedtls_mpi_cmp_mpi(i32*, i32*) #1

declare dso_local i32 @mbedtls_mpi_shift_r(i32*, i32) #1

declare dso_local i32 @dhm_check_range(i32*, i32*) #1

declare dso_local i32 @mbedtls_mpi_exp_mod(i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @mbedtls_mpi_write_binary(i32*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

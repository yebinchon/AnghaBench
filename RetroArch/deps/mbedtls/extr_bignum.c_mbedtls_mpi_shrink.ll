; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_bignum.c_mbedtls_mpi_shrink.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_bignum.c_mbedtls_mpi_shrink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64* }

@ciL = common dso_local global i64 0, align 8
@MBEDTLS_ERR_MPI_ALLOC_FAILED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_mpi_shrink(%struct.TYPE_4__* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* %5, align 8
  %12 = icmp ule i64 %10, %11
  br i1 %12, label %13, label %17

13:                                               ; preds = %2
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %15 = load i64, i64* %5, align 8
  %16 = call i32 @mbedtls_mpi_grow(%struct.TYPE_4__* %14, i64 %15)
  store i32 %16, i32* %3, align 4
  br label %87

17:                                               ; preds = %2
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = sub i64 %20, 1
  store i64 %21, i64* %7, align 8
  br label %22

22:                                               ; preds = %35, %17
  %23 = load i64, i64* %7, align 8
  %24 = icmp ugt i64 %23, 0
  br i1 %24, label %25, label %38

25:                                               ; preds = %22
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  %28 = load i64*, i64** %27, align 8
  %29 = load i64, i64* %7, align 8
  %30 = getelementptr inbounds i64, i64* %28, i64 %29
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %25
  br label %38

34:                                               ; preds = %25
  br label %35

35:                                               ; preds = %34
  %36 = load i64, i64* %7, align 8
  %37 = add i64 %36, -1
  store i64 %37, i64* %7, align 8
  br label %22

38:                                               ; preds = %33, %22
  %39 = load i64, i64* %7, align 8
  %40 = add i64 %39, 1
  store i64 %40, i64* %7, align 8
  %41 = load i64, i64* %7, align 8
  %42 = load i64, i64* %5, align 8
  %43 = icmp ult i64 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %38
  %45 = load i64, i64* %5, align 8
  store i64 %45, i64* %7, align 8
  br label %46

46:                                               ; preds = %44, %38
  %47 = load i64, i64* %7, align 8
  %48 = load i64, i64* @ciL, align 8
  %49 = call i64 @mbedtls_calloc(i64 %47, i64 %48)
  %50 = inttoptr i64 %49 to i64*
  store i64* %50, i64** %6, align 8
  %51 = icmp eq i64* %50, null
  br i1 %51, label %52, label %54

52:                                               ; preds = %46
  %53 = load i32, i32* @MBEDTLS_ERR_MPI_ALLOC_FAILED, align 4
  store i32 %53, i32* %3, align 4
  br label %87

54:                                               ; preds = %46
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 1
  %57 = load i64*, i64** %56, align 8
  %58 = icmp ne i64* %57, null
  br i1 %58, label %59, label %80

59:                                               ; preds = %54
  %60 = load i64*, i64** %6, align 8
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 1
  %63 = load i64*, i64** %62, align 8
  %64 = load i64, i64* %7, align 8
  %65 = load i64, i64* @ciL, align 8
  %66 = mul i64 %64, %65
  %67 = call i32 @memcpy(i64* %60, i64* %63, i64 %66)
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 1
  %70 = load i64*, i64** %69, align 8
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = trunc i64 %73 to i32
  %75 = call i32 @mbedtls_mpi_zeroize(i64* %70, i32 %74)
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 1
  %78 = load i64*, i64** %77, align 8
  %79 = call i32 @mbedtls_free(i64* %78)
  br label %80

80:                                               ; preds = %59, %54
  %81 = load i64, i64* %7, align 8
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  store i64 %81, i64* %83, align 8
  %84 = load i64*, i64** %6, align 8
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 1
  store i64* %84, i64** %86, align 8
  store i32 0, i32* %3, align 4
  br label %87

87:                                               ; preds = %80, %52, %13
  %88 = load i32, i32* %3, align 4
  ret i32 %88
}

declare dso_local i32 @mbedtls_mpi_grow(%struct.TYPE_4__*, i64) #1

declare dso_local i64 @mbedtls_calloc(i64, i64) #1

declare dso_local i32 @memcpy(i64*, i64*, i64) #1

declare dso_local i32 @mbedtls_mpi_zeroize(i64*, i32) #1

declare dso_local i32 @mbedtls_free(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

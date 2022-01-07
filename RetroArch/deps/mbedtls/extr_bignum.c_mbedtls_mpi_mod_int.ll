; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_bignum.c_mbedtls_mpi_mod_int.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_bignum.c_mbedtls_mpi_mod_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i64, i64 }

@MBEDTLS_ERR_MPI_DIVISION_BY_ZERO = common dso_local global i32 0, align 4
@MBEDTLS_ERR_MPI_NEGATIVE_VALUE = common dso_local global i32 0, align 4
@biH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_mpi_mod_int(i32* %0, %struct.TYPE_3__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = load i32, i32* @MBEDTLS_ERR_MPI_DIVISION_BY_ZERO, align 4
  store i32 %15, i32* %4, align 4
  br label %103

16:                                               ; preds = %3
  %17 = load i32, i32* %7, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %16
  %20 = load i32, i32* @MBEDTLS_ERR_MPI_NEGATIVE_VALUE, align 4
  store i32 %20, i32* %4, align 4
  br label %103

21:                                               ; preds = %16
  %22 = load i32, i32* %7, align 4
  %23 = icmp eq i32 %22, 1
  br i1 %23, label %24, label %26

24:                                               ; preds = %21
  %25 = load i32*, i32** %5, align 8
  store i32 0, i32* %25, align 4
  store i32 0, i32* %4, align 4
  br label %103

26:                                               ; preds = %21
  %27 = load i32, i32* %7, align 4
  %28 = icmp eq i32 %27, 2
  br i1 %28, label %29, label %37

29:                                               ; preds = %26
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 0
  %34 = load i32, i32* %33, align 4
  %35 = and i32 %34, 1
  %36 = load i32*, i32** %5, align 8
  store i32 %35, i32* %36, align 4
  store i32 0, i32* %4, align 4
  br label %103

37:                                               ; preds = %26
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  store i64 %40, i64* %8, align 8
  store i32 0, i32* %10, align 4
  br label %41

41:                                               ; preds = %85, %37
  %42 = load i64, i64* %8, align 8
  %43 = icmp ugt i64 %42, 0
  br i1 %43, label %44, label %88

44:                                               ; preds = %41
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = load i64, i64* %8, align 8
  %49 = sub i64 %48, 1
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %9, align 4
  %52 = load i32, i32* %10, align 4
  %53 = load i32, i32* @biH, align 4
  %54 = shl i32 %52, %53
  %55 = load i32, i32* %9, align 4
  %56 = load i32, i32* @biH, align 4
  %57 = ashr i32 %55, %56
  %58 = or i32 %54, %57
  store i32 %58, i32* %10, align 4
  %59 = load i32, i32* %10, align 4
  %60 = load i32, i32* %7, align 4
  %61 = sdiv i32 %59, %60
  store i32 %61, i32* %11, align 4
  %62 = load i32, i32* %11, align 4
  %63 = load i32, i32* %7, align 4
  %64 = mul nsw i32 %62, %63
  %65 = load i32, i32* %10, align 4
  %66 = sub nsw i32 %65, %64
  store i32 %66, i32* %10, align 4
  %67 = load i32, i32* @biH, align 4
  %68 = load i32, i32* %9, align 4
  %69 = shl i32 %68, %67
  store i32 %69, i32* %9, align 4
  %70 = load i32, i32* %10, align 4
  %71 = load i32, i32* @biH, align 4
  %72 = shl i32 %70, %71
  %73 = load i32, i32* %9, align 4
  %74 = load i32, i32* @biH, align 4
  %75 = ashr i32 %73, %74
  %76 = or i32 %72, %75
  store i32 %76, i32* %10, align 4
  %77 = load i32, i32* %10, align 4
  %78 = load i32, i32* %7, align 4
  %79 = sdiv i32 %77, %78
  store i32 %79, i32* %11, align 4
  %80 = load i32, i32* %11, align 4
  %81 = load i32, i32* %7, align 4
  %82 = mul nsw i32 %80, %81
  %83 = load i32, i32* %10, align 4
  %84 = sub nsw i32 %83, %82
  store i32 %84, i32* %10, align 4
  br label %85

85:                                               ; preds = %44
  %86 = load i64, i64* %8, align 8
  %87 = add i64 %86, -1
  store i64 %87, i64* %8, align 8
  br label %41

88:                                               ; preds = %41
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 2
  %91 = load i64, i64* %90, align 8
  %92 = icmp slt i64 %91, 0
  br i1 %92, label %93, label %100

93:                                               ; preds = %88
  %94 = load i32, i32* %10, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %93
  %97 = load i32, i32* %7, align 4
  %98 = load i32, i32* %10, align 4
  %99 = sub nsw i32 %97, %98
  store i32 %99, i32* %10, align 4
  br label %100

100:                                              ; preds = %96, %93, %88
  %101 = load i32, i32* %10, align 4
  %102 = load i32*, i32** %5, align 8
  store i32 %101, i32* %102, align 4
  store i32 0, i32* %4, align 4
  br label %103

103:                                              ; preds = %100, %29, %24, %19, %14
  %104 = load i32, i32* %4, align 4
  ret i32 %104
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

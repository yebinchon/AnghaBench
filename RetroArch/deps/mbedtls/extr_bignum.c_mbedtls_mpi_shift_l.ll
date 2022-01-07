; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_bignum.c_mbedtls_mpi_shift_l.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_bignum.c_mbedtls_mpi_shift_l.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i64* }

@biL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_mpi_shift_l(%struct.TYPE_5__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store i64 %1, i64* %4, align 8
  store i64 0, i64* %9, align 8
  %11 = load i64, i64* %4, align 8
  %12 = load i64, i64* @biL, align 8
  %13 = udiv i64 %11, %12
  store i64 %13, i64* %7, align 8
  %14 = load i64, i64* %4, align 8
  %15 = load i64, i64* @biL, align 8
  %16 = sub i64 %15, 1
  %17 = and i64 %14, %16
  store i64 %17, i64* %8, align 8
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %19 = call i64 @mbedtls_mpi_bitlen(%struct.TYPE_5__* %18)
  %20 = load i64, i64* %4, align 8
  %21 = add i64 %19, %20
  store i64 %21, i64* %6, align 8
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @biL, align 8
  %26 = mul i64 %24, %25
  %27 = load i64, i64* %6, align 8
  %28 = icmp ult i64 %26, %27
  br i1 %28, label %29, label %35

29:                                               ; preds = %2
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %31 = load i64, i64* %6, align 8
  %32 = call i32 @BITS_TO_LIMBS(i64 %31)
  %33 = call i32 @mbedtls_mpi_grow(%struct.TYPE_5__* %30, i32 %32)
  %34 = call i32 @MBEDTLS_MPI_CHK(i32 %33)
  br label %35

35:                                               ; preds = %29, %2
  store i32 0, i32* %5, align 4
  %36 = load i64, i64* %7, align 8
  %37 = icmp ugt i64 %36, 0
  br i1 %37, label %38, label %80

38:                                               ; preds = %35
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  store i64 %41, i64* %6, align 8
  br label %42

42:                                               ; preds = %62, %38
  %43 = load i64, i64* %6, align 8
  %44 = load i64, i64* %7, align 8
  %45 = icmp ugt i64 %43, %44
  br i1 %45, label %46, label %65

46:                                               ; preds = %42
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 1
  %49 = load i64*, i64** %48, align 8
  %50 = load i64, i64* %6, align 8
  %51 = load i64, i64* %7, align 8
  %52 = sub i64 %50, %51
  %53 = sub i64 %52, 1
  %54 = getelementptr inbounds i64, i64* %49, i64 %53
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 1
  %58 = load i64*, i64** %57, align 8
  %59 = load i64, i64* %6, align 8
  %60 = sub i64 %59, 1
  %61 = getelementptr inbounds i64, i64* %58, i64 %60
  store i64 %55, i64* %61, align 8
  br label %62

62:                                               ; preds = %46
  %63 = load i64, i64* %6, align 8
  %64 = add i64 %63, -1
  store i64 %64, i64* %6, align 8
  br label %42

65:                                               ; preds = %42
  br label %66

66:                                               ; preds = %76, %65
  %67 = load i64, i64* %6, align 8
  %68 = icmp ugt i64 %67, 0
  br i1 %68, label %69, label %79

69:                                               ; preds = %66
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 1
  %72 = load i64*, i64** %71, align 8
  %73 = load i64, i64* %6, align 8
  %74 = sub i64 %73, 1
  %75 = getelementptr inbounds i64, i64* %72, i64 %74
  store i64 0, i64* %75, align 8
  br label %76

76:                                               ; preds = %69
  %77 = load i64, i64* %6, align 8
  %78 = add i64 %77, -1
  store i64 %78, i64* %6, align 8
  br label %66

79:                                               ; preds = %66
  br label %80

80:                                               ; preds = %79, %35
  %81 = load i64, i64* %8, align 8
  %82 = icmp ugt i64 %81, 0
  br i1 %82, label %83, label %123

83:                                               ; preds = %80
  %84 = load i64, i64* %7, align 8
  store i64 %84, i64* %6, align 8
  br label %85

85:                                               ; preds = %119, %83
  %86 = load i64, i64* %6, align 8
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = icmp ult i64 %86, %89
  br i1 %90, label %91, label %122

91:                                               ; preds = %85
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 1
  %94 = load i64*, i64** %93, align 8
  %95 = load i64, i64* %6, align 8
  %96 = getelementptr inbounds i64, i64* %94, i64 %95
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @biL, align 8
  %99 = load i64, i64* %8, align 8
  %100 = sub i64 %98, %99
  %101 = lshr i64 %97, %100
  store i64 %101, i64* %10, align 8
  %102 = load i64, i64* %8, align 8
  %103 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 1
  %105 = load i64*, i64** %104, align 8
  %106 = load i64, i64* %6, align 8
  %107 = getelementptr inbounds i64, i64* %105, i64 %106
  %108 = load i64, i64* %107, align 8
  %109 = shl i64 %108, %102
  store i64 %109, i64* %107, align 8
  %110 = load i64, i64* %9, align 8
  %111 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 1
  %113 = load i64*, i64** %112, align 8
  %114 = load i64, i64* %6, align 8
  %115 = getelementptr inbounds i64, i64* %113, i64 %114
  %116 = load i64, i64* %115, align 8
  %117 = or i64 %116, %110
  store i64 %117, i64* %115, align 8
  %118 = load i64, i64* %10, align 8
  store i64 %118, i64* %9, align 8
  br label %119

119:                                              ; preds = %91
  %120 = load i64, i64* %6, align 8
  %121 = add i64 %120, 1
  store i64 %121, i64* %6, align 8
  br label %85

122:                                              ; preds = %85
  br label %123

123:                                              ; preds = %122, %80
  br label %124

124:                                              ; preds = %123
  %125 = load i32, i32* %5, align 4
  ret i32 %125
}

declare dso_local i64 @mbedtls_mpi_bitlen(%struct.TYPE_5__*) #1

declare dso_local i32 @MBEDTLS_MPI_CHK(i32) #1

declare dso_local i32 @mbedtls_mpi_grow(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @BITS_TO_LIMBS(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

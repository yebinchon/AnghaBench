; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_bignum.c_mbedtls_mpi_set_bit.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_bignum.c_mbedtls_mpi_set_bit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64* }

@biL = common dso_local global i64 0, align 8
@MBEDTLS_ERR_MPI_BAD_INPUT_DATA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_mpi_set_bit(%struct.TYPE_4__* %0, i64 %1, i8 zeroext %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8 %2, i8* %7, align 1
  store i32 0, i32* %8, align 4
  %11 = load i64, i64* %6, align 8
  %12 = load i64, i64* @biL, align 8
  %13 = udiv i64 %11, %12
  store i64 %13, i64* %9, align 8
  %14 = load i64, i64* %6, align 8
  %15 = load i64, i64* @biL, align 8
  %16 = urem i64 %14, %15
  store i64 %16, i64* %10, align 8
  %17 = load i8, i8* %7, align 1
  %18 = zext i8 %17 to i32
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %3
  %21 = load i8, i8* %7, align 1
  %22 = zext i8 %21 to i32
  %23 = icmp ne i32 %22, 1
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = load i32, i32* @MBEDTLS_ERR_MPI_BAD_INPUT_DATA, align 4
  store i32 %25, i32* %4, align 4
  br label %69

26:                                               ; preds = %20, %3
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @biL, align 8
  %31 = mul i64 %29, %30
  %32 = load i64, i64* %6, align 8
  %33 = icmp ule i64 %31, %32
  br i1 %33, label %34, label %45

34:                                               ; preds = %26
  %35 = load i8, i8* %7, align 1
  %36 = zext i8 %35 to i32
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %34
  store i32 0, i32* %4, align 4
  br label %69

39:                                               ; preds = %34
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %41 = load i64, i64* %9, align 8
  %42 = add i64 %41, 1
  %43 = call i32 @mbedtls_mpi_grow(%struct.TYPE_4__* %40, i64 %42)
  %44 = call i32 @MBEDTLS_MPI_CHK(i32 %43)
  br label %45

45:                                               ; preds = %39, %26
  %46 = load i64, i64* %10, align 8
  %47 = shl i64 1, %46
  %48 = xor i64 %47, -1
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 1
  %51 = load i64*, i64** %50, align 8
  %52 = load i64, i64* %9, align 8
  %53 = getelementptr inbounds i64, i64* %51, i64 %52
  %54 = load i64, i64* %53, align 8
  %55 = and i64 %54, %48
  store i64 %55, i64* %53, align 8
  %56 = load i8, i8* %7, align 1
  %57 = zext i8 %56 to i64
  %58 = load i64, i64* %10, align 8
  %59 = shl i64 %57, %58
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 1
  %62 = load i64*, i64** %61, align 8
  %63 = load i64, i64* %9, align 8
  %64 = getelementptr inbounds i64, i64* %62, i64 %63
  %65 = load i64, i64* %64, align 8
  %66 = or i64 %65, %59
  store i64 %66, i64* %64, align 8
  br label %67

67:                                               ; preds = %45
  %68 = load i32, i32* %8, align 4
  store i32 %68, i32* %4, align 4
  br label %69

69:                                               ; preds = %67, %38, %24
  %70 = load i32, i32* %4, align 4
  ret i32 %70
}

declare dso_local i32 @MBEDTLS_MPI_CHK(i32) #1

declare dso_local i32 @mbedtls_mpi_grow(%struct.TYPE_4__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

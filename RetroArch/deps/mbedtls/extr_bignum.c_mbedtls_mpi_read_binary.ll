; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_bignum.c_mbedtls_mpi_read_binary.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_bignum.c_mbedtls_mpi_read_binary.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64* }

@ciL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_mpi_read_binary(%struct.TYPE_5__* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  store i64 0, i64* %10, align 8
  br label %11

11:                                               ; preds = %24, %3
  %12 = load i64, i64* %10, align 8
  %13 = load i64, i64* %6, align 8
  %14 = icmp ult i64 %12, %13
  br i1 %14, label %15, label %27

15:                                               ; preds = %11
  %16 = load i8*, i8** %5, align 8
  %17 = load i64, i64* %10, align 8
  %18 = getelementptr inbounds i8, i8* %16, i64 %17
  %19 = load i8, i8* %18, align 1
  %20 = zext i8 %19 to i32
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %15
  br label %27

23:                                               ; preds = %15
  br label %24

24:                                               ; preds = %23
  %25 = load i64, i64* %10, align 8
  %26 = add i64 %25, 1
  store i64 %26, i64* %10, align 8
  br label %11

27:                                               ; preds = %22, %11
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %29 = load i64, i64* %6, align 8
  %30 = load i64, i64* %10, align 8
  %31 = sub i64 %29, %30
  %32 = call i32 @CHARS_TO_LIMBS(i64 %31)
  %33 = call i32 @mbedtls_mpi_grow(%struct.TYPE_5__* %28, i32 %32)
  %34 = call i32 @MBEDTLS_MPI_CHK(i32 %33)
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %36 = call i32 @mbedtls_mpi_lset(%struct.TYPE_5__* %35, i32 0)
  %37 = call i32 @MBEDTLS_MPI_CHK(i32 %36)
  %38 = load i64, i64* %6, align 8
  store i64 %38, i64* %8, align 8
  store i64 0, i64* %9, align 8
  br label %39

39:                                               ; preds = %64, %27
  %40 = load i64, i64* %8, align 8
  %41 = load i64, i64* %10, align 8
  %42 = icmp ugt i64 %40, %41
  br i1 %42, label %43, label %69

43:                                               ; preds = %39
  %44 = load i8*, i8** %5, align 8
  %45 = load i64, i64* %8, align 8
  %46 = sub i64 %45, 1
  %47 = getelementptr inbounds i8, i8* %44, i64 %46
  %48 = load i8, i8* %47, align 1
  %49 = zext i8 %48 to i64
  %50 = load i64, i64* %9, align 8
  %51 = load i64, i64* @ciL, align 8
  %52 = urem i64 %50, %51
  %53 = shl i64 %52, 3
  %54 = shl i64 %49, %53
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = load i64*, i64** %56, align 8
  %58 = load i64, i64* %9, align 8
  %59 = load i64, i64* @ciL, align 8
  %60 = udiv i64 %58, %59
  %61 = getelementptr inbounds i64, i64* %57, i64 %60
  %62 = load i64, i64* %61, align 8
  %63 = or i64 %62, %54
  store i64 %63, i64* %61, align 8
  br label %64

64:                                               ; preds = %43
  %65 = load i64, i64* %8, align 8
  %66 = add i64 %65, -1
  store i64 %66, i64* %8, align 8
  %67 = load i64, i64* %9, align 8
  %68 = add i64 %67, 1
  store i64 %68, i64* %9, align 8
  br label %39

69:                                               ; preds = %39
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %7, align 4
  ret i32 %71
}

declare dso_local i32 @MBEDTLS_MPI_CHK(i32) #1

declare dso_local i32 @mbedtls_mpi_grow(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @CHARS_TO_LIMBS(i64) #1

declare dso_local i32 @mbedtls_mpi_lset(%struct.TYPE_5__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
